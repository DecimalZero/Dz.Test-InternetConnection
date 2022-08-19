![](/Images/Test-InternetConnection.png?raw=true)

<pre>
  Test-InternetConnection is an example PowerShell script to learn how to write a
  custom PowerShell Module. This example PowerShell Module is programmed to be executed
  two diffrent ways, by calling the file or importing the module and calling the
  PowerShell function in memory. This example querys the Internet DNS for a domain,
  DNS Lookup. With a little modification, this function can be called by other PowerShell
  scripts to check if the Internet is accessible before performming Azure, GCP, or AWS
  REST API calls across the Internet.
   
  1a.) The following command is executed without passing a pramater. The defule DNS
       Domain Name is Azure.Microsoft.com.
</pre>

![](/Images/PSTIC01.png?raw=true)
![](/Images/PSTIC02.png?raw=true)

<pre>
  1b.) You can also pass any Internet domain name.
</pre>

![](/Images/PSFile01.png?raw=true)
![](/Images/PSFile02.png?raw=true)

<pre>
  2a.) Pass an invalid Internet domain name to see error.
</pre>

![](/Images/PSFake01.png?raw=true)
![](/Images/PSFake02.png?raw=true)

<pre>
  2b.) Pass a PowerShell debug switch to see addtional information.
</pre>

![](/Images/PSDebug01.png?raw=true)
![](/Images/PSDebug02.png?raw=true)

<pre>
  3.) Need Help? This example will show you how to make your own help file.
</pre>

![](/Images/PSHelp01.png?raw=true)
![](/Images/PSHelp02.png?raw=true)

<pre>
  4.) Import PowerShell Modile and call the Module Function.
</pre>

![](/Images/PSModule01.png?raw=true)
![](/Images/PSModule02.png?raw=true)
![](/Images/PSModule03.png?raw=true)
