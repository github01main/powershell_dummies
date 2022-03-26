# powershell scripts auto-complete-macro.

i'm mainly use windows 10 these shell scripts are maded for my project please don't use officially on your project.

## Features

* windows-terminal update and installing with scoop CLI installer is added.
* `custom-windows-terminal-settings.json` is custom background templetes included. `Dracula`, `Vibrant Tom`


list of powershell scripts auto-complete-macro.

* [powershell_dummies/scoop-windws-terminal](https://github.com/github01main/powershell_dummies/tree/main/scoop-windows-terminal)


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

2. then read these policies what is locked.
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
**we have plenty of selection of Execution Policy example check the below...**
| Group Policy | Execution Polcity|
| ------------- | ------------- |
| Allow all scripts | Unrestricted |
| Allow local scripts and remote signed scripts | RemoteSigned |
| Allow only signed scripts | AllSigned |

```powershell

```
## Updates

Run the update tool, which is generated inside each project:

```powershell

```
