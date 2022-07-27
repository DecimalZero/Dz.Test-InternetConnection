![](/Images/Test-InternetConnection.png?raw=true)

<pre>
   Test-InternetConnection is a quick way to see if you are online utilizing DNS Lookup.
   This function can be called by other PowerShell scripts to check if the Internet is
   accessible before performming Azure, GCP, or AWS REST API calls across the Internet.

   When using Test-InternetConnection, if Successful, nothing is returned or displayed.
   If there is an error, an error will display warning the Internet is unreachable.

   NOTE: To use this within a PowerShell console, check out DNSLookup.ps1 in the Example folder.
</pre>

![](/Images/DNSLookup.png?raw=true)

<pre>
   Need Help? Type .\Test-InternetConnection.ps1 -Help
</pre>

![](/Images/DNSLookupHelp.png?raw=true)

<pre>
   _____________________________________________________________________________________________

   New to PowerShell? This PowerShell example is a great way to learn the following...

   1.) How to use Parameters
   2.) How to use a PowerShell String
   3.) How to use a PowerShell Switch
   4.) How to Pass a Variable to a Function
   5.) How to Write a PowerShell Help Function
   6.) How to Write PowerShell Error Details
   7.) How to Automatically Check for Installed Modules
   8.) How to Automatically Install PowerShell Modules
   9.) How to Perform an Internet DNS Lookup

   _____________________________________________________________________________________________

   EXAMPLES:
   .\Test-InternetConnection.ps1
   .\Test-InternetConnection.ps1 -Help
   .\Test-InternetConnection.ps1 Google.com
   .\Test-InternetConnection.ps1 SomeFakeDomainName.com
   .\Test-InternetConnection.ps1 SomeFakeDomainName.com -Debug
</pre>
