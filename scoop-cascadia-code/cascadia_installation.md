# auto cascadia-code font installation.

this auto installation powershell program has dependencies for use oh-my-posh on win 10.

## Let you know what is Cascadia-code
You can download a zip containing the latest version of Cascadia Code from the releases page here:<br/>
[https://github.com/microsoft/cascadia-code/releases](https://github.com/microsoft/cascadia-code/releases)

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

👉 Note: If you have previously installed a version of Cascadia Code, please uninstall the previous version prior to installing a new version. Not doing so can result in improper rendering. Please see the [double install page if you should run into issues](https://github.com/microsoft/cascadia-code/wiki/Double-installation-issue)

## Installing Cascadia Code in VS Code
1. Go to File > Preferences > Settings or hit Ctrl + , in VS Code.
2. Enter "Font Face" in search field.
3. Enter following in Font Face option: 'Cascadia Code', Consolas, 'Courier New', monospace.
4. Enable Font Ligatures option available just below 'Font Face'.
5. Press Enter and you're good to go.
6. To customize weight, enter "Font Weight" in search field.
7. Select, or type in, the desired font weight (the latest version of VS Code allows manual entry of any font weight).

>Note: If you've installed font and it does not get applied in VS Code, try restarting VS Code.

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
