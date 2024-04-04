Write-Host  -ForegroundColor Yellow "Starting OSDCloud ..."
Clear-Host
Write-Host "=======================================================" -ForegroundColor Yellow
Write-Host "===================== Main Menu =======================" -ForegroundColor Yellow
Write-Host "==================== ID Logistics =====================" -ForegroundColor Yellow
Write-Host "================== Beau van de Pol ====================" -ForegroundColor Yellow
Write-Host "============= bvandepol@id-logistics.com ==============" -ForegroundColor Yellow
Write-Host "=======================================================" -ForegroundColor Yellow
Write-Host "1: Windows 11 23H1"-ForegroundColor Yellow
Write-Host "2: Windows 10 20H2" -ForegroundColor Yellow
Write-Host "3: Exit`n"-ForegroundColor Yellow
$input = Read-Host "Please make a selection"

Write-Host  -ForegroundColor Yellow "Loading OSDCloud..."

Import-Module OSD -Force
Install-Module OSD -Force

switch ($input)
{
    '1' { Start-OSDCloud -OSLanguage en-us -OSName 'Windows 11 23H2 x64' -OSEdition Pro -OSActivation Volume -ZTI } 
    '2' { Start-OSDCloud -OSLanguage en-us -OSName 'Windows 10 22H2 x64' -OSEdition Pro -OSActivation Volume -ZTI } 
    '3' { Exit		}
}
