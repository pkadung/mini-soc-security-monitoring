#requires -RunAsAdministrator
[CmdletBinding()]
param(
    [string]$Manager = "192.168.30.10",
    [string]$AgentName = "windows-11-host",
    [string]$Version = "4.14.7-1"
)

$ErrorActionPreference = "Stop"
$Project = "C:\ATTT-Project"
$Evidence = Join-Path $Project "Evidence\02-Wazuh\Day09\WINDOWS-11"
$FimPath = "C:\Mini-SOC-FIM"
$Msi = Join-Path $env:TEMP "wazuh-agent-$Version.msi"
$Url = "https://packages.wazuh.com/4.x/windows/wazuh-agent-$Version.msi"
$Config = "C:\Program Files (x86)\ossec-agent\ossec.conf"
$Log = Join-Path $Evidence "day09-automation.log"

New-Item -ItemType Directory -Force -Path $Evidence, $FimPath | Out-Null
Start-Transcript -Path $Log -Append

try {
    Write-Host "[1/6] Kiem tra ket noi toi Wazuh Manager..." -ForegroundColor Cyan
    foreach ($Port in 1514,1515) {
        $ok = Test-NetConnection $Manager -Port $Port -InformationLevel Quiet
        if (-not $ok) { throw "Khong ket noi duoc $Manager`:$Port" }
    }

    Write-Host "[2/6] Cai dat hoac kiem tra Wazuh Agent..." -ForegroundColor Cyan
    if (-not (Get-Service -Name WazuhSvc -ErrorAction SilentlyContinue)) {
        Invoke-WebRequest -Uri $Url -OutFile $Msi
        $p = Start-Process msiexec.exe -ArgumentList "/i `"$Msi`" /qn WAZUH_MANAGER=`"$Manager`" WAZUH_AGENT_NAME=`"$AgentName`"" -Wait -PassThru
        if ($p.ExitCode -notin 0,3010) { throw "MSI loi, exit code: $($p.ExitCode)" }
    } else {
        Write-Host "Wazuh Agent da ton tai, bo qua cai lai." -ForegroundColor Yellow
    }

    Write-Host "[3/6] Cau hinh Defender Event Log va FIM..." -ForegroundColor Cyan
    if (-not (Test-Path $Config)) { throw "Khong tim thay $Config" }
    Copy-Item $Config "$Config.day09.bak" -Force
    $text = Get-Content $Config -Raw
    $block = @'
  <!-- MINI-SOC-DAY09-BEGIN -->
  <localfile>
    <location>Microsoft-Windows-Windows Defender/Operational</location>
    <log_format>eventchannel</log_format>
  </localfile>
  <!-- MINI-SOC-DAY09-END -->
'@
    if ($text -notmatch 'MINI-SOC-DAY09-BEGIN') {
        $fimLine = '    <directories check_all="yes" realtime="yes" report_changes="yes">C:\Mini-SOC-FIM</directories>'
        $syscheckEnd = $text.IndexOf('</syscheck>')
        if ($syscheckEnd -lt 0) { throw "Khong tim thay khoi syscheck" }
        $text = $text.Insert($syscheckEnd, $fimLine + "`r`n  ")
        $pos = $text.LastIndexOf('</ossec_config>')
        if ($pos -lt 0) { throw "Khong tim thay the dong ossec_config" }
        $text = $text.Insert($pos, $block + "`r`n")
        [System.IO.File]::WriteAllText($Config, $text, [System.Text.UTF8Encoding]::new($false))
    }

    Write-Host "[4/6] Khoi dong Agent..." -ForegroundColor Cyan
    Set-Service WazuhSvc -StartupType Automatic
    Restart-Service WazuhSvc
    Start-Sleep -Seconds 8

    Write-Host "[5/6] Tao su kien kiem thu an toan..." -ForegroundColor Cyan
    $TestFile = Join-Path $FimPath "day09-test.txt"
    "Mini SOC FIM test $(Get-Date -Format o)" | Set-Content $TestFile
    Add-Content $TestFile "Modified $(Get-Date -Format o)"

    Write-Host "[6/6] Xuat Evidence..." -ForegroundColor Cyan
    Get-Date | Out-File (Join-Path $Evidence "01-timestamp.txt")
    Get-Service WazuhSvc | Format-List * | Out-File (Join-Path $Evidence "02-wazuh-service.txt")
    Test-NetConnection $Manager -Port 1514 | Out-File (Join-Path $Evidence "03-manager-port-1514.txt")
    Test-NetConnection $Manager -Port 1515 | Out-File (Join-Path $Evidence "04-manager-port-1515.txt")
    Get-FileHash $Config -Algorithm SHA256 | Out-File (Join-Path $Evidence "05-ossec-conf-sha256.txt")
    Get-ComputerInfo | Select-Object WindowsProductName,WindowsVersion,OsBuildNumber,CsName | Format-List | Out-File (Join-Path $Evidence "06-windows-info.txt")
    Get-MpComputerStatus | Format-List AntivirusEnabled,RealTimeProtectionEnabled,AntivirusSignatureLastUpdated | Out-File (Join-Path $Evidence "07-defender-status.txt")
    Get-WinEvent -LogName 'Microsoft-Windows-Windows Defender/Operational' -MaxEvents 10 -ErrorAction SilentlyContinue | Format-List TimeCreated,Id,LevelDisplayName,Message | Out-File (Join-Path $Evidence "08-defender-events.txt")
    Copy-Item $Config (Join-Path $Evidence "ossec.conf.evidence.txt") -Force

    Remove-Item $Msi -Force -ErrorAction SilentlyContinue
    Write-Host "HOAN TAT. Cho 1-3 phut roi kiem tra agent tren Dashboard." -ForegroundColor Green
    Write-Host "Evidence: $Evidence" -ForegroundColor Green
}
catch {
    Write-Host "THAT BAI: $($_.Exception.Message)" -ForegroundColor Red
    exit 1
}
finally {
    Stop-Transcript
}
