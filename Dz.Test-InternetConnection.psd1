# Copyright (c) NestLink. All rights reserved.
# Licensed under the MIT License.

# Module manifest for module 'Dz.Test-InternetConnection' created using New-ModuleManifest

@{

# Script module or binary module file associated with this manifest.
RootModule = 'Dz.Test-InternetConnection.psm1'

# Version number of this module.
ModuleVersion = '1.0.3'

# Supported PSEditions
# CompatiblePSEditions = @()

# ID used to uniquely identify this module
GUID = '26e6e82b-7b29-4fa5-b56a-51ce0d1d1e79'

# Author of this module
Author = 'DecimalZero'

# Company or vendor of this module
CompanyName = 'NestLink'

# Copyright statement for this module
Copyright = '(c) NestLink. All rights reserved.'

# Description of the functionality provided by this module
Description = 'Test-InternetConnection is a quick why to see if you are online utilizing DNS Lookup.'

# Minimum version of the PowerShell engine required by this module
# PowerShellVersion = ''

# Name of the PowerShell host required by this module
# PowerShellHostName = ''

# Minimum version of the PowerShell host required by this module
# PowerShellHostVersion = ''

# Minimum version of Microsoft .NET Framework required by this module. This prerequisite is valid for the PowerShell Desktop edition only.
# DotNetFrameworkVersion = ''

# Minimum version of the common language runtime (CLR) required by this module. This prerequisite is valid for the PowerShell Desktop edition only.
# ClrVersion = ''

# Processor architecture (None, X86, Amd64) required by this module
# ProcessorArchitecture = ''

# Modules that must be imported into the global environment prior to importing this module
# RequiredModules = @()

# Assemblies that must be loaded prior to importing this module
# RequiredAssemblies = @()

# Script files (.ps1) that are run in the caller's environment prior to importing this module.
# ScriptsToProcess = @()

# Type files (.ps1xml) to be loaded when importing this module
# TypesToProcess = @()

# Format files (.ps1xml) to be loaded when importing this module
# FormatsToProcess = @()

# Modules to import as nested modules of the module specified in RootModule/ModuleToProcess
# NestedModules = @()

# Functions to export from this module, for best performance, do not use wildcards and do not delete the entry, use an empty array if there are no functions to export.
FunctionsToExport = @('Test-InternetConnection')

# Cmdlets to export from this module, for best performance, do not use wildcards and do not delete the entry, use an empty array if there are no cmdlets to export.
CmdletsToExport = @()

# Variables to export from this module
VariablesToExport = '*'

# Aliases to export from this module, for best performance, do not use wildcards and do not delete the entry, use an empty array if there are no aliases to export.
AliasesToExport = @()

# DSC resources to export from this module
# DscResourcesToExport = @()

# List of all modules packaged with this module
# ModuleList = @()

# List of all files packaged with this module
# FileList = @()

# Private data to pass to the module specified in RootModule/ModuleToProcess. This may also contain a PSData hashtable with additional module metadata used by PowerShell.
PrivateData = @{

    PSData = @{

        # Tags applied to this module. These help with module discovery in online galleries.
        Tags = @('Test-InternetConnection', 'InternetConnection', 'Check', 'Internet', 'DNSLookup', 'DNS', 'Lookup', 'PowerShell', 'Console', 'Install', 'Module', 'Parameters', 'String', 'Switch', 'Function', 'Help', 'Error', 'DecimalZero')

        # A URL to the license for this module.
        LicenseUri = 'https://github.com/DecimalZero/Dz.Test-InternetConnection/blob/main/LICENSE'

        # A URL to the main website for this project.
        ProjectUri = 'https://github.com/DecimalZero/Dz.Test-InternetConnection'

        # A URL to an icon representing this module.
        IconUri = 'https://github.com/DecimalZero/Dz.Test-InternetConnection/tree/main/Images/Test-InternetConnection.png'

        # ReleaseNotes of this module
        ReleaseNotes = 'https://github.com/DecimalZero/Dz.Test-InternetConnection/blob/main/README.md'

        # Prerelease string of this module
        # Prerelease = 'beta3'

        # Flag to indicate whether the module requires explicit user acceptance for install/update/save
        # RequireLicenseAcceptance = $false

        # External dependent modules of this module
        # ExternalModuleDependencies = @()

    } # End of PSData hashtable

} # End of PrivateData hashtable

# HelpInfo URI of this module
# HelpInfoURI = ''

# Default prefix for commands exported from this module. Override the default prefix using Import-Module -Prefix.
# DefaultCommandPrefix = ''

}
