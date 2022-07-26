<#PSScriptInfo

.NAME Test-InternetConnection

.VERSION 1.0.1

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

Param (
  [String]$DnsDomainName,
  [Switch]$Help,
  [Switch]$Debug
)

# Check if dns domain name parameter is blank
If ($DnsDomainName -eq ''){
  # Set dns domain name variable
  $DnsDomainName = 'azure.microsoft.com'
}

Function WriteErrorDetails{# Write error details to powershell console
  # Write error message
  Write-Host (('   ') + ($error[0].ToString())) -ForegroundColor Red; Write-Host

  # Write powershell source code postition message
  Write-Host (('   ') + ($error[0].InvocationInfo.PositionMessage)) -ForegroundColor Red; Write-Host
}

Function Check-Modules{# Check if required powershell gallery modules are installed
  # Check to see if required powershell dz.write-message module is installed
  If (Get-Module -ListAvailable -Name Dz.Write-Message) {
    # Import module dz.write-message
    Import-Module Dz.Write-Message
  }Else {
    Try {# Try installing the required powershell module
      Install-Module -Name Dz.Write-Message -Force

      # Import module dz.write-message
      Import-Module Dz.Write-Message
    }Catch {
      # Display error message
      Write-Host
      Write-Host '   WARNING: Something Went Wrong. Unable to Install' -ForegroundColor Red
      Write-Host '            or Import PowerShell Module Dz.Write-Message!!' -ForegroundColor Red
      Write-Host

      # Check if debug switch equals true
      If ($Debug){
        # Call function to write error details to powershell console
        WriteErrorDetails
      }

      # Break out of powershell script
      Break
    }
  }
}

Function Help-Message{# Custom help message
  # Display custom help message
  Write-Message 'Test-InternetConnection is a quick way to see if you are online utilizing DNS Lookup.' -Indent2 -AddLineBefore
  Write-Message 'This function can be called by other PowerShell scripts to check if the Internet is' -Indent2
  Write-Message 'accessible before performing Azure, GCP, or AWS REST API calls across the Internet.' -Indent2 -AddLineAfter
  Write-Message 'When using Test-InternetConnection, if Successful, nothing is returned or displayed.' -Indent2
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
  Write-Message '_____________________________________________________________________________________________' -Indent2 -AddLineAfter
  Write-Message 'EXAMPLES:'  -Indent2 -AddLineBefore
  Write-Message '.\Test-InternetConnection.ps1' -Indent2
  Write-Message '.\Test-InternetConnection.ps1 -Help' -Indent2
  Write-Message '.\Test-InternetConnection.ps1 Google.com' -Indent2
  Write-Message '.\Test-InternetConnection.ps1 SomeFakeDomainName.com' -Indent2
  Write-Message '.\Test-InternetConnection.ps1 SomeFakeDomainName.com -Debug'  -Indent2 -AddLineAfter

  # Exit script
  Exit
}

Function TestInternetConnection{# Test internet connectivity
  Param (
    [String]$DnsDomainName
  )

  Try {# Test to see if dns domain name can be resolved
    Resolve-DnsName -Name $DnsDomainName -Type NS -DnsOnly -ErrorAction Stop | Where-Object Section -eq Additional
  }Catch {
    # Display error message
    Write-Host
    Write-Host '   WARNING: Something Went Wrong. No Internet Connection!!' -ForegroundColor Red
    Write-Host '   Please check your Network Cable or Wifi and Try Again.' -ForegroundColor Red
    Write-Host

    # Check if debug switch equals true
    If ($Debug){
      # Call function to write error details to powershell console
      WriteErrorDetails
    }

    # Break out of powershell script
    Break
  }
}

# Check for help switch
If ($Help){
  # Call function to display custom help message
  Help-Message
}

# Call function to check if required powershell modules are installed
Check-Modules

# Call function to test internet connectivity
TestInternetConnection $DnsDomainName

# NOTE: If Successful, nothing is returned or displayed.
#       If there is an error, the script will exit and anything
#       below this line will not be displaied. See Example.