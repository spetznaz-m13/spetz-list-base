<!-- omit from toc -->
# The Spetz List - Base

![image](https://github.com/spetznaz-m13/spetz-list-base/blob/main/docs/images/spetz-list-base-thumbnail.jpg?raw=true)

Wabbajack Modlist Installer by *SpetznazM13*

<table stlyle="border: none;">
<tr>
<td><img src="https://github.com/spetznaz-m13/spetz-list-base/blob/main/docs/images/icon-wabbajack.png" width="64px" /></td>
<td><a href="https://build.wabbajack.org/authored_files/download/Spetz%20List%20-%20Base.wabbajack_b07d2016-19c9-4064-93c0-38cb911603a2">Download on Wabbajack</a></td>
<td><img src="https://github.com/spetznaz-m13/spetz-list-base/blob/main/docs/images/icon-discord.png" width="72px" /></td>
<td><a href="https://discord.gg/amBNnXWDc6">Join us on Discord</a></td>
</tr>
</table>

[![CC BY-NC-SA 4.0][cc-by-nc-sa-shield]][cc-by-nc-sa]

[![CC BY-NC-SA 4.0][cc-by-nc-sa-image]][cc-by-nc-sa]

[cc-by-nc-sa]: http://creativecommons.org/licenses/by-nc-sa/4.0/
[cc-by-nc-sa-image]: https://licensebuttons.net/l/by-nc-sa/4.0/88x31.png
[cc-by-nc-sa-shield]: https://img.shields.io/badge/License-CC%20BY--NC--SA%204.0-lightgrey.svg


<!-- omit from toc -->
## Contents
- [Preamble](#preamble)
- [System Requirements](#system-requirements)
- [Installation](#installation)
  - [Pre-Installation](#pre-installation)
  - [Wabbajack Installation](#wabbajack-installation)
    - [Installing Wabbajack](#installing-wabbajack)
    - [Downloading and Installing Spetz List Base](#downloading-and-installing-spetz-list-base)
      - [Problems with installation](#problems-with-installation)
  - [Post-Installation](#post-installation)
    - [BethINI Pie](#bethini-pie)
    - [Setting Up Shortcuts](#setting-up-shortcuts)
- [Playing the Modlist](#playing-the-modlist)
  - [Modlist Usage](#modlist-usage)
  - [Modlist Features](#modlist-features)
- [Updating the modlist](#updating-the-modlist)
- [Uninstalling the Modlist](#uninstalling-the-modlist)
- [Support](#support)
- [Author Information and Credits](#author-information-and-credits)

## Preamble

The **Base** version of the **Spetz List** is meant to be a stable foundation to build other modlists from. This modlist only includes mods for increased stability and fixes.

A full list of mods used can be found [here](https://loadorderlibrary.com/lists/spetz-list-base).

> [!NOTE]
> This work is licensed under a [Creative Commons Attribution-NonCommercial-ShareAlike 4.0 International License][cc-by-nc-sa].

## System Requirements

> [!WARNING]
> Only Windows 10 and 11 are fully supported with Wabbajack (WJ). No other operating systems are officially supported.

***

| | Requirements | Info |
| :---: | :---: | :---: |
| **Game** | GOG Skyrim Special Edition | Steam version is **not supported** |
| **Operating System** | Windows 10/11 (64bit) | Windows 11 is currently **untested** |
| **CPU** | 4 Core/ 4 Threads | Intel i5-7500 or newer or AMD equivalent. ARM & 32bit not supported. |
| **RAM** | 16 GB | 32 GB preferrable |
| **GPU** | 4 GB Vram | Nvidia 970 or AMD R9 390 or newer |
| **Space** | 75 GB | Solid-state drive (SSD) required |

## Installation

### Pre-Installation

> [!CAUTION]
> The following must be downloaded and installed before Wabbajack installation:
> * [Microsoft Visual C++ Redistributable 2022 x64](https://learn.microsoft.com/en-us/cpp/windows/latest-supported-vc-redist)
> * [Microsoft .NET Desktop Runtime 4.8 x64](https://dotnet.microsoft.com/en-us/download/dotnet-framework/net48)
> * [Microsoft .NET Desktop Runtime 10 x64](https://dotnet.microsoft.com/en-us/download/dotnet/10.0)
> * [7-Zip](https://www.7-zip.org/)

***

Prior to installing the **Spetz List**, please complete the following steps.

1. Download and install the **GOG version** of Skyrim Special Edition to a solid-state drive.
1. If necessary, change the language of the game to English. Other languages are not supported.
1. Launch the game and reach the main menu. Allow it to download any addon files if needed.
1. Close the game.
1. Either uninstall the **Steam version** of Skryim Special Edition, **OR** close Steam and rename the game's manifest file `<A-Z>:\SteamLibrary\steamapps\appmanifest_489830.acf` to `appmanifest_489830.acf.disabled`.

>[!CAUTION]
>**Make sure the Steam version of the game is uninstalled or disabled before running Wabbajack.**

***

### Wabbajack Installation

#### Installing Wabbajack

1. Download the latest version of Wabbajack from their official site [https://www.wabbajack.org/](https://www.wabbajack.org/).
1. Save it to a location close to the root of the drive (For example, `C:\wabbajack`) and on the same SSD as the install of the game.
1. Run the `Wabbajack.exe` file that was downloaded.
1. In the bottom left, click on `Settings`.
1. Under `Logins`, login to your [Nexus Mods](https://www.nexusmods.com/) account.
1. Once your Nexus Mods account is logged in, close Wabbajack.

#### Downloading and Installing Spetz List Base

Downloading and installing the **Spetz List** can take a while depending on your internet connection and depending on whether you have [Nexus Mods Premium](https://www.nexusmods.com/premium). To install the **Spetz List**, complete the following steps:

1. Close Wabbajack if it's open.
1. Download the **Spetz List** `.wabbajack` file from the [Wabbajack CDN](https://build.wabbajack.org/authored_files/download/Spetz%20List%20-%20Base.wabbajack_b07d2016-19c9-4064-93c0-38cb911603a2).
1. Open the `Spetz List - Base.wabbajack` file with Wabbajack.
1. For `Installation Location`, choose a location close to the root of the drive, not in a protected folder/location, and on the same solid-state drive as the install of the GOG version of Skyrim (For example, `C:\wabbajack\spetz-list-base`).
1. For `Downloads Location`, it's generally recommended to let Wabbajack automatically set this (Wabbajack sets it to same path as `Installation Location` except with `\downloads` added to it).
1. Click `Install`.
1. Once the install completes, click on `Create Desktop Shortcut` and then close Wabbajack.
1. Double click the desktop shortcut that was created to open Mod Organizer 2, which is used to run the game.
1. In the top right corner, click the `Shortcut` dropdown menu, and choose `Desktop`.
1. Close Mod Organizer 2.

<details><summary>Problems with Installation</summary>
<p>

The Wabbajack log files can be found in the version folder that gets automatically created in the same folder as the `wabbajack.exe` file in the `logs\` folder. Some common Wabbajack issues are listed below.

* Could not download X:
    * Big files can fail to download due to connection issues. You can either run wabbajack again or download the file manually. If you decide to manually download it, make sure to place it in the same place as the other downloads.

* X is not a whitelisted download:
    * This will happen when we update the modlist. Please check if there is a new update or wait until you see a release ping.

* Wabbajack could not find the game folder:
    * Make sure the **GOG version** of Skyrim Special Edition is properly installed to the same SSD as Wabbajack.

* Unable to download `Data_ccbgssse037-curios`:
    * Make sure your version of the `Rare Curios` addon is acquired from within the game and not from verifying the game through Steam.

</p>
</details>

***

### Post-Installation

#### BethINI Pie

`BethINI PIE` is an application used to configure and manage the `Skyrim.ini` and `SkyrimPrefs.ini` configuration files. These files control the game's graphical settings and should be configured after the modlist has been installed.

1. Open the installation folder and run the program `ModOrganizer.exe`.
1. In the top right corner, click on the large dropdown box, and set it to `BethINI PIE`.
1. Click on the `Run` button next to the dropdown box.
1. Ensure that the tab `Basic` is selected.
1. Under the `Display` section, configure the `Resolution` setting to match your display's resolution.
1. Click on `File` and then `Save`.
1. For each of the subsequent popup windows, click `Save`.

> [!NOTE]
> If you find that the game isn't able to run smoothly with your hardware, under the `Presets` section of the `Basic` tab, try selecting one of the lower `Bethini Presets` such as `Low` or `Medium`.

#### Setting Up Shortcuts

1. Open the installation folder and run the program `ModOrganizer.exe`.
1. In the top right corner, make sure the large dropdown box is set to `Skyrim Special Edition`.
1. In the top right corner, click the `Shortcut` dropdown menu, and choose `Desktop`.
1. Close `Mod Organizer 2`.

## Playing the Modlist

### Modlist Usage

* To play the game, run the `Skryim Anniversary Edition` desktop shortcut that was created.
* Save files are stored in `<installation location>\profiles\spetz-list\saves\`.
* The `Skyrim.ini` and `SkyrimPrefs.ini` files are stored in `<installation location>\profiles\spetz-list\`. Run the `BethINI` application via `Mod Organizer 2` to configure these files.
* Screenshots are taken using the Print Screen `PrtScn` keyboard key and are saved to `<installation location>\game-root\`.

### Modlist Features

* Better third person item selection.
* Improved movement, such as jumping while sprinting.
* Improved character creation.
* Choice to start new games as usual or in other scenarios.
* Proper `Alt + Tab`'ing.
* Improved auto saving.
  * Traditional Skyrim auto saves and quicksaves have been replaced with normal "hard" saves (Still triggered automatically by the game). This was done due to the fact that traditional auto saves and quicksaves are notoriously unreliable and have the potential to corrupt save games.
  * Skyrim now performs a "hard" save automatically in the following conditions:
    * Every 10 minutes.
    * After combat.
    * On wait.
    * On sleep.
    * On discovering a location.
    * And only if another auto save has not occurred in the past 3 minutes.
* Numerous mods that improve stability and game reliability.
  * Examples include [SSE Engine Fixes](https://www.nexusmods.com/skyrimspecialedition/mods/17230), [Unofficial Skyrim Special Edition Patch](https://www.nexusmods.com/skyrimspecialedition/mods/266), [Recursion Monitor](https://www.nexusmods.com/skyrimspecialedition/mods/76867), and [GOG Memory (VRAM) Leak Fix](https://www.nexusmods.com/skyrimspecialedition/mods/169302).
* Numerous fixes in things like settings, scripts, quests, and meshes.
* The [Skyrim Script Extender (SKSE)](https://www.nexusmods.com/skyrimspecialedition/mods/30379) is installed, along with many other mod frameworks to support usual modding activities.
* Vanilla Skyrim `.esm` plugins have been cleaned.
* All plugin conflicts have been resolved or had their intentional conflicts properly "hidden" via `.modgroup` files in acccordance with [The Method](https://tes5edit.github.io/docs/6-themethod.html).

## Updating the Modlist

Before updating, please check the changelog and back up your saves. Save files are stored in `<installation location>\profiles\spetz-list\saves\`.

Updating the modlist uses the same process as installing the modlist. Make sure the `Installation Location` and `Downloads Location` paths are the same as your initial install.

>[!CAUTION]
> Any mods you have added or changes to mods that you've made will be **deleted** when updating.

## Uninstalling the Modlist

Delete the install location folder and any desktop shortcuts that were created.

>[!CAUTION]
> Saves are stored in `<installation location>\profiles\spetz-list\saves\`, so deleting the install location folder will also delete your saves.

## Support

Only the latest version of the modlist is supported. No exceptions.

If you encounter bugs with the modlist, open a new issue [here](https://github.com/spetznaz-m13/spetz-list-base/issues). Please check for existing issues first.

No support is provided for users who added, modified, or removed mods. Support is only provided for the latest version of the modlist without any modifications made to it.

## Author Information and Credits

* SpetznazM13 - Author/main developer of the **Spetz List**.
* Al/Styyx Setup of Skyrim ASSOS - Thanks for their `README.md` template and inspiration for this modlist.
