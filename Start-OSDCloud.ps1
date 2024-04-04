# Function to display the menu
function Show-Menu {
    Write-Host -ForegroundColor Yellow "Starting OSDCloud ..."
    Clear-Host
    # Displaying header
    Write-Host "=======================================================" -ForegroundColor Yellow
    Write-Host "===================== Main Menu =======================" -ForegroundColor Yellow
    Write-Host "==================== ID Logistics =====================" -ForegroundColor Yellow
    Write-Host "================== Beau van de Pol ====================" -ForegroundColor Yellow
    Write-Host "============= bvandepol@id-logistics.com ==============" -ForegroundColor Yellow
    Write-Host "=======================================================" -ForegroundColor Yellow
    # Displaying menu options
    Write-Host "1: Windows 11 23H1 | English | Pro" -ForegroundColor Yellow
    Write-Host "2: Windows 10 20H2 | English | Pro" -ForegroundColor Yellow
    Write-Host "3: I'll select it myself" -ForegroundColor Yellow
    Write-Host "4: Exit`n" -ForegroundColor Yellow
}

# Function to select options based on user input
function Select-Option {
    param (
        [string]$input
    )
    # Switch case to perform actions based on user input
    switch ($input) {
        '1' { Start-OSDCloud -OSLanguage en-us -OSName 'Windows 11 23H2 x64' -OSEdition Pro -OSActivation Volume -ZTI }
        '2' { Start-OSDCloud -OSLanguage en-us -OSName 'Windows 10 22H2 x64' -OSEdition Pro -OSActivation Volume -ZTI }
        '3' { Start-OSDCloud }
        '4' { Exit }
    }
}

# Function to start OSDCloud with a delay
function Start-OSDCloudWithDelay {
    param (
        [int]$delaySeconds
    )
    # Display loading message
    Write-Host -ForegroundColor Yellow "Loading OSDCloud..."
    # Import OSD module and install if not present
    Import-Module OSD -Force
    Install-Module OSD -Force
    # Delay before automatically selecting option 1
    Start-Sleep -Seconds $delaySeconds
    # Automatically select option 1
    Start-OSDCloud -OSLanguage en-us -OSName 'Windows 11 23H2 x64' -OSEdition Pro -OSActivation Volume -ZTI
}

# Display the menu
Show-Menu
# Prompt user for input
$input = Read-Host "Please make a selection"
# Select option based on user input
Select-Option -input $input
# Start OSDCloud with a delay of 30 seconds
Start-OSDCloudWithDelay -delaySeconds 30
