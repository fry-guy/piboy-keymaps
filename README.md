# piboy-keymaps

This is a collection of launch scripts with custom keymaps to assist in playing DOS-based CRPGs designed for keyboard and mouse on handheld controller-based devices using DosBox-Pure libretro core in RetroArch on RetroPie. All remaps are implimented using xboxdvr (https://xboxdrv.gitlab.io/).

These scripts were specifically designed for use on the Raspberry Pi-based PiBoy DMG handheld device, but should also work on other systems, possibly requiring minor tweaks to the button codes on Line 14. A six-button layout with trigger buttons and at least one joystick is required. To learn your device's specific button code, SSH into your device and run "evtest", select the number associated with your controller and press a key to output it's device-specific button code.

A full list of Linux virtual keyboard codes are available at https://manpages.ubuntu.com/manpages/focal/man7/virkeycode-linux.7.html. Xboxdvr documentation is available at https://xboxdrv.gitlab.io/xboxdrv.html.

Might and Magic III: Isles of Terra

Script setup

To use this script, "Might and Magic III.sh" must be placed in the "ports" folder in Retroarch and the game file (titled Might and Magic III - Isles of Terra.dosz") must be placed in the /home/pi/RetroPie/roms/pc/ folder. Additionally, "Might & Magic III - Isles of Terra.cfg" must be placed in the /opt/retropie/configs/pc/DOSBox-pure folder. (This second file will remap the retroarch menu hotkey to F11, which is required to prevent the first character window from opening every time the system menu is activated.) You will also need to remap the virtual keyboard in DosBox-Pure to the controller button whose default keyboard map is left-control in RetroArch. (Key 9 on the PiBoy DMG.) This can be done within the game from the retroarch system menu under "Controls --> Port 1 Controls." (Please note that navigation of the retroarch menu should remain the same but each button press will experience a short delay (50 milliseconds) as an a consequence of the key remapping. These delays will not be experienced in game.)

You can also choose to launch from your pc games folder; however, this requires "wine = "XINIT:wine_desktop %ROM%"" (no quotes) be added as a line in to /opt/retropie/configs/pc/emulators.cfg and "wine" be selected as the emulator option for this game at startup. The extentions ".sh" and ".SH" will also need to be added as options to the pc section of the systems.cfg file at /opt/retropie/configs/all/emulationstation

Might and Magic III can be purchased on GOG at https://www.gog.com/game/might_and_magic_6_limited_edition.

Overview of key mapping

