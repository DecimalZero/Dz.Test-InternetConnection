<#PSScriptInfo

.NAME Test-InternetConnection

.VERSION 1.0.4

.DESCRIPTION Test-InternetConnection is a quick why to see if you are online utilizing DNS Lookup.

.GUID 26e6e82b-7b29-4fa5-b56a-51ce0d1d1e79

.AUTHOR DecimalZero

.COMPANYNAME NestLink

.COPYRIGHT Copyright (C) NestLink.  All rights reserved.

.TAGS Test-InternetConnection InternetConnection Check Internet DNSLookup DNS Lookup PowerShell Console Install Module Parameters String Switch Function Help Error Azure REST API APIs DecimalZero

.LICENSEURI
https://github.com/DecimalZero/Dz.Test-InternetConnection/blob/main/LICENSE

.PROJECTURI
https://github.com/DecimalZero/Dz.Test-InternetConnection

.ICONURI
https://github.com/DecimalZero/Dz.Test-InternetConnection/tree/main/Images/Test-InternetConnection.png

.RELEASENOTES
https://github.com/DecimalZero/Dz.Test-InternetConnection/blob/main/README.md

.REQUIRESMODULE N/A

.EXTERNALMODULEDEPENDENCIES N/A 

.REQUIREDSCRIPTS N/A

.EXTERNALSCRIPTDEPENDENCIES N/A

.PRIVATEDATA N/A

.PARAMETERS
  [[-DnsDomainName] <String>]
  [[-Help] <SwitchParameter>]
  [[-Debug] <SwitchParameter>]

#>

# Paramaters needed if powershell file is exected using the powershell console
# i.e.  .\Test-InternetConnection.ps1 Google.com
# Test-InternetConnection.ps1 = File Name
  Param (
    [String]$DnsDomainName,
    [Switch]$Help1,
    [Switch]$Debug1
  )

Function TestInternetConnection{
  # Paramaters needed if powershell function is exected after powershell module is imported
  # i.e.  TestInternetConnection Google.com
  # TestInternetConnection = Function Name

  Param (# Note: No need to pass the file switches again as they are global
    [String]$DnsDomainName,
    [Switch]$Help2,
    [Switch]$Debug2
  )

  # Set powershell window title
  $Host.UI.RawUI.WindowTitle = 'TestInternetConnection -Help'

  # Write message to powershell console
  Clear-Host; Write-Host; Write-Host 'Checking PowerShell Session Parameters...' -ForegroundColor Yellow

  # Check if dns domain name parameter is blank
  If ($DnsDomainName -eq ''){
    # Set dns domain name variable
    $DnsDomainName = 'azure.microsoft.com'
  }

  # Set help variable
  If ($Help2 -eq $True){
    $Help = $Help2
  }Else {
    $Help = $Help1
  }

  # Set debug variable
  If ($Debug2 -eq $True){
    $Debug = $Debug2
  }Else {
    $Debug = $Debug1
  }

  # Check for the debug switch
  If($Debug -eq $True){
    # Set debug preferences to continue
    $DebugPreference = 'Continue'
    $WarningPreference = 'Continue'
    $ErrorActionPreference = 'Continue'

    Write-Host ' - Debug Mode is ' -ForegroundColor Cyan -NoNewLine
    Write-Host 'Enabled' -ForegroundColor Green

    Write-Host ' - Debug Preference is ' -ForegroundColor Cyan -NoNewLine
    Write-Host $DebugPreference -ForegroundColor Green

    Write-Host ' - Warning Preference is ' -ForegroundColor Cyan -NoNewLine
    Write-Host $WarningPreference -ForegroundColor Green

    Write-Host ' - Error ActionPreference is ' -ForegroundColor Cyan -NoNewLine
    Write-Host $ErrorActionPreference -ForegroundColor Green
  }Else {
    # Set debug preferences to silently continue, this will ignore all write-debug comments
    $DebugPreference = 'SilentlyContinue'
    $WarningPreference = 'SilentlyContinue'
    $ErrorActionPreference = 'Stop'

    Write-Host ' - Debug Mode is ' -ForegroundColor Cyan -NoNewLine
    Write-Host 'Disabled' -ForegroundColor Red

    Write-Host ' - Debug Preference is ' -ForegroundColor Cyan -NoNewLine
    Write-Host $DebugPreference -ForegroundColor Red

    Write-Host ' - Warning Preference is ' -ForegroundColor Cyan -NoNewLine
    Write-Host $WarningPreference -ForegroundColor Red

    Write-Host ' - Error ActionPreference is ' -ForegroundColor Cyan -NoNewLine
    Write-Host $ErrorActionPreference -ForegroundColor Red
  }

  Function Help-Message{# Custom help message
    # Display custom help message
    Write-Message 'TestInternetConnection is a quick way to see if you are online utilizing DNS Lookup.' -Indent2 -AddLineBefore
    Write-Message 'This function can be called by other PowerShell scripts to check if the Internet is' -Indent2
    Write-Message 'accessible before performing Azure, GCP, or AWS REST API calls across the Internet.' -Indent2 -AddLineAfter
    Write-Message 'When using TestInternetConnection, if Successful, nothing is returned or displayed.' -Indent2
    Write-Message 'If there is an error, a warning will display stating the Internet is unreachable.' -Indent2 -AddLineAfter
    Write-Message 'NOTE: To use this within a PowerShell console, check out DNSLookup.ps1 in the Example folder.' -Indent2 -AddLineAfter
    Write-Message '_____________________________________________________________________________________________' -Indent2 -AddLineAfter
    Write-Message 'New to PowerShell? This PowerShell example is a great way to learn the following...' -Indent2 -AddLineBefore -AddLineAfter    
    Write-Message '1.) How to use Parameters' -Indent2
    Write-Message '2.) How to use a PowerShell String' -Indent2
    Write-Message '3.) How to use a PowerShell Switch' -Indent2
    Write-Message '4.) How to Pass a Variable to a Function' -Indent2
    Write-Message '5.) How to Write a PowerShell Help Function' -Indent2
    Write-Message '6.) How to Write PowerShell Error Details' -Indent2
    Write-Message '7.) How to Automatically Check for Installed Modules' -Indent2
    Write-Message '8.) How to Automatically Install PowerShell Modules' -Indent2
    Write-Message '9.) How to Perform an Internet DNS Lookup' -Indent2 -AddLineAfter
    Write-Message '=======================================================================' -Indent2
    Write-Message '= POWERSHELL CONSOLE - EXECUTING FILE EXAMPLES:'  -Indent2
    Write-Message '=======================================================================' -Indent2
    Write-Message '.\TestInternetConnection.ps1' -Indent2
    Write-Message '.\TestInternetConnection.ps1 -Debug' -Indent2
    Write-Message '.\TestInternetConnection.ps1 -Help' -Indent2
    Write-Message '.\TestInternetConnection.ps1 Google.com' -Indent2
    Write-Message '.\TestInternetConnection.ps1 SomeFakeDomainName.com' -Indent2
    Write-Message '.\TestInternetConnection.ps1 SomeFakeDomainName.com -Debug'  -Indent2 -AddLineAfter
    Write-Message '=======================================================================' -Indent2
    Write-Message '= POWERSHELL CONSOLE - EXECUTING FUNCTION EXAMPLES:'  -Indent2
    Write-Message '=======================================================================' -Indent2
    Write-Message 'Import-Module -Name "C:\SomeFolder\Dz.Test-InternetConnection" -Verbose' -Indent2 -AddLineBefore -AddLineAfter
    Write-Message 'TestInternetConnection' -Indent2
    Write-Message 'TestInternetConnection -Debug' -Indent2    
    Write-Message 'TestInternetConnection -Help' -Indent2
    Write-Message 'TestInternetConnection Google.com' -Indent2
    Write-Message 'TestInternetConnection SomeFakeDomainName.com' -Indent2
    Write-Message 'TestInternetConnection SomeFakeDomainName.com -Debug'  -Indent2 -AddLineAfter

    # Break out of powershell script
    Break
  }

  Function Check-Modules{# Check if required powershell gallery modules are installed
    # Check to see if required powershell dz.write-message module is installed
    Write-Host;Write-Host ('Checking if Required PowerShell Module Dz.Write-Message is Installed...') -ForegroundColor Yellow

    If (Get-Module -ListAvailable -Name Dz.Write-Message) {
      # Import module dz.write-message
      Import-Module Dz.Write-Message

      # Write message utilizing the imported dz.write-message module
      Write-Message (('PowerShell Module |Dz.Write-Message v') + (((Get-Module -Name Dz.Write-Message -ListAvailable).ModuleBase).Split('\')[7]) + ('| is Installed...')) 'Cyan|Green|Cyan' -Indent1
    }Else {
      Try {# Try installing the required powershell module
        Write-Host ' - Installing PowerShell Module Dz.Write-Message...' -ForegroundColor Cyan
        Install-Module -Name Dz.Write-Message -Force

        # Import module dz.write-message
        Import-Module Dz.Write-Message

        # Write message utilizing the imported dz.write-message module
        Write-Message (('PowerShell Module |Dz.Write-Message v') + (((Get-Module -Name Dz.Write-Message -ListAvailable).ModuleBase).Split('\')[7]) + ('| is Installed...')) 'Cyan|Green|Cyan' -Indent1
      }Catch {
        # Display error message
        Write-Host
        Write-Host '   WARNING: Something Went Wrong. Unable to Install' -ForegroundColor Red
        Write-Host '            or Import PowerShell Module Dz.Write-Message!!' -ForegroundColor Red
        Write-Host

        # Break out of powershell script
        Break
      }
    }
  }

  Function TestConnection{# Test internet connectivity
    Param (
      [String]$DnsDomainName
    )

    Try {# Test to see if dns domain name can be resolved
      Resolve-DnsName -Name $DnsDomainName -Type NS -DnsOnly -ErrorAction Stop | Where-Object Section -eq Additional
      Write-Message (('   Domain Name |') + ($DnsDomainName) + ('| Resolved Successfully!!')) 'Green|Yellow|Green' -AddLineBefore -AddlineAfter
    }Catch {
      # Display error message
      Write-Message (('   WARNING: Domain Name |') + ($DnsDomainName) + ('| Did Not Resolve Successfully!!')) 'Red|Yellow|Red' -AddlineBefore
      Write-Message '   Verify Internet Connectivity, Network Cable, or Wifi and Try Again.' 'Red' -AddLineAfter

      # Break out of powershell script
      Break
    }
  }

  # Check for help switch
  If ($Help -eq $True){
    # Call function to display custom help message
    Help-Message

    # Break out of powershell script
    Break
  }

  # Call function to check if required powershell modules are installed
  Check-Modules

  # Call function to test internet connection
  TestConnection $DnsDomainName
}

# Call function to test internet connection
# Note: No need to pass the file switches again as they are global
TestInternetConnection $DnsDomainName -Debug1 -Help1