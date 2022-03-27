# auto cascadia-code font installation.

this auto installation powershell program has dependencies for use oh-my-posh on win 10.

## Features

The variants contained within are :

* `Cascadia Code`: standard version of Cascadia.
* `Cascadia Mono`: version of Cascadia that doesn't have ligatures.
* `Cascadia (Code|Mono) PL` : version of Cascadia that has embedded powerline symbols.

the download zip contains various file formats:

* `ttf variable`: we recommend this version for all users, particularly those on Windows or any other OS that employs TrueType hinting. It offers the greatest diversity of weight options (anything from 200-700).

* `ttf static`: in the rare situation where the above variable font version is not supported, or a singular weight is preferred to the entire range, static formats are supplied. However, please note they do not have the same degree of hinting quality as the variable font versions.

* `otf static`: for users who prefer OTF format fonts, otf static instances are provided. At this time we do not have a variable font OTF version.

* `WOFF2`: These versions are provided for the purposes of web use, and are available both as variable fonts, and static instances.

Whichever format you prefer to install, we do not recommend installing more than one as it can cause naming issues within the OS.<br/>

Once unzipped, open the font file—this will open a new window displaying the characters included in the font along with the font displayed at different sizes. This window should have an "Install" button that will install the font on your machine when clicked.
* [powershell_dummies/scoop-windows-terminal](https://github.com/github01main/powershell_dummies/tree/main/scoop-windows-terminal)
* [powershell_dummies/scoop-linux-toolkit](https://github.com/github01main/powershell_dummies/tree/main/scoop-linux_toolkit)
* [powershell_dummies/scoop-nodejs](https://github.com/github01main/powershell_dummies/tree/main/scoop-nodejs)
* [powershell_dummies/scoop-hub](https://github.com/github01main/powershell_dummies/tree/main/scoop-hub)

## Usage
you must Install [scoop](https://scoop.sh/) on your PC if you are using windows os.<br/>
Make sure PowerShell 5 (or later, include PowerShell Core) and .NET Framework 4.5 (or later) are installed. Then run:
```powershell
Invoke-Expression (New-Object System.Net.WebClient).DownloadString('https://get.scoop.sh')

# or shorter
iwr -useb get.scoop.sh | iex
```
if you didn't worked ? it's ok just follow this [Execution policies](https://docs.microsoft.com/en-us/powershell/module/microsoft.powershell.core/about/about_execution_policies?view=powershell-7.2) and reboot your computer.

1. first step check your powershell Execution Policies.
```powershell
Get-ExecutionPolicy -List
```

2. then read on your command line these policies what is locked.
```powershell
        Scope ExecutionPolicy
        ----- ---------------
MachinePolicy       Undefined
   UserPolicy       Undefined
      Process       Undefined
  CurrentUser    RemoteSigned
 LocalMachine       AllSigned
```
**normally policies are randomly set-up on your pc you don't need to focus these settings.**

3. set up new Execution policy.
```powershell
Set-ExecutionPolicy -ExecutionPolicy Unrestricted -Scope CurrentUser
```
**we have plenty of selection of Execution Policy example check the below... i recommend first one.**
| Group Policy              | Execution Polcity |
|     :---:                 |     :---:         |
| Allow all scripts         | `Unrestricted`    |
| Allow local scripts and remote signed scripts | `RemoteSigned` |
| Allow only signed scripts | `AllSigned`       |

**then your ExecutionPolicy is changed to Unrestricted check below codes ! then scoop installer is working now.**
```powershell
        Scope ExecutionPolicy
        ----- ---------------
MachinePolicy       Undefined
   UserPolicy       Undefined
      Process       Undefined
  CurrentUser    Unrestricted
 LocalMachine       AllSigned
```

4. Reboot PC
**reboot your PC and import above install commands on your powershell then it works. :)**
