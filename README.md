# piboy-keymaps

This is a collection of launch scripts with custom keymaps to assist in playing DOS-based CRPGs designed for keyboard and mouse on handheld controller-based devices using DosBox-Pure libretro core in RetroArch on RetroPie. All remaps are implimented using xboxdvr (https://xboxdrv.gitlab.io/).

These scripts were specifically designed for use on the Raspberry Pi-based PiBoy DMG handheld device, but should also work on other systems, possibly requiring minor tweaks to the button codes on Line 14. A six-button layout with trigger buttons and at least one joystick is required. To learn your device's specific button code, SSH into your device and run "evtest", select the number associated with your controller and press a key to output it's device-specific button code.

A full list of Linux virtual keyboard codes are available at https://manpages.ubuntu.com/manpages/focal/man7/virkeycode-linux.7.html. Xboxdvr documentation is available at https://xboxdrv.gitlab.io/xboxdrv.html.

Might and Magic III: Isles of Terra

Script setup

To use this script, "Might and Magic III.sh" must be placed in the "ports" folder in Retroarch and the game file (titled Might and Magic III - Isles of Terra.dosz") must be placed in the /home/pi/RetroPie/roms/pc/ folder. Additionally, "Might & Magic III - Isles of Terra.cfg" must be placed in the /opt/retropie/configs/pc/DOSBox-pure folder. (This second file will remap the retroarch menu hotkey to F11, which is required to prevent the first character window from opening every time the system menu is activated.) 

Users will also need to remap the virtual keyboard in DosBox-Pure to the controller button whose default keyboard map is left-control in RetroArch. (Key 9 on the PiBoy DMG.) This can be done within the game from the retroarch system menu under "Controls --> Port 1 Controls." 

You can also choose to launch from your pc games folder; however, this requires "wine = "XINIT:wine_desktop %ROM%"" (no quotes) be added as a line in to /opt/retropie/configs/pc/emulators.cfg and "wine" be selected as the emulator option for this game at startup. The extentions ".sh" and ".SH" will also need to be added as options to the pc section of the systems.cfg file at /opt/retropie/configs/all/emulationstation

Might and Magic III can be purchased on GOG at https://www.gog.com/game/might_and_magic_6_limited_edition.

Overview of key mapping

Might and Magic III: Isles of Terra is an early '90s computer RPG released before the establishment of many of the standarded conventions of computer game navigation. (e.g. No WASD navigation, etc.) The game also makes extensive use of the number pad and F1-F8 buttons for character and inventory management. In this remap scheme, the right and left trigger buttons are used extentively to modify the function of the other controller buttons. By holding down the left trigger, for example, players can access the F1-F8 function keys with the six face buttons (C, B, A, Z, Y, and X as well as start and select.) By holding down the right trigger button, players can also access keys 1, 2, 3, 4, 5, 6, 7, 8, 9, and 0 with the front buttons (1-6) or moving the left joystick (7, 8, 9 and 0) clockwise starting from Y+. The left joytick can also be used for navigation if the left trigger is held down. The left or right sidestep function can also be acessed in this mode through the depression of th right trigger in addition to the left.

The dpad also functions as a modifier for menus within most shops and other locations (e.g. temples, taverns, training grounds and banks) with the upper arrow activing the first menu item upon pressing a specific key for that shop (e.g. Y for temples), the right arrow for the second menu option, and so forth moving clockwise across the dpad. A number of other common functions are also mapped to the arrow keys in combination with the right or left triggers. The quick removal and equipment of armor and weapons can be accomplished through the use of the right trigger -- also the primary toggle for inventory management -- in combination with the dpad, for example. Some buttons also feature a "hold to confirm" option, such as selling or fixing armor or weapons in shops. The controller key assigned to each location is primarily based upon the game's assignment of keyboard keys, as many keys are remapped to return multiple keypresses due to limited options. These multiple key presses should remain invisible to the user as the remaps have been tested to triggering overlapping commands in game. (e.g.: The Tavern and the Temple menus are assigned different controller keys (Y and Z, respectively) since D selects Donate or Drink based upon the situation.)

The lower three controller buttons (C, B, and A) are primarily used for combat and also utilize parallel conventions for similiar functions. For example, the menu to alter the default behavior of the fight buton (B) can be modified through the depression of the down arrow before selecting the button and the new function can be toggled with the right arrow in combination with B, with confirmation of the new selection accomplished through holding the select combination for a moment. Similiarly, the cast button (C) selects a new spell with the use of the down arrow in combination with the button and the confirmation of the new spell through holding the selection combination for a moment. The attack button is modified based upon the up or down arrow, with up for attack and down for block/defend.

Several buttons' functions also change based upon how long they're held. A long press of the map key (Y) will open the quest log, for example. A long press of the Enter (start) and Esc (select) keys will also input a Y or a N, respectively, as many menus use these different inputs interchangably. Users can also assure the input of Enter or Y versus Esc or N through the use of the arrow keys, with the down arrow triggering a Enter/Esc or the up arrow triggering a Y/N.

Mouse navigation is accomplished through the left joystick and the left mouse button is activated through the X key. The in game menu is accessed with the right triggler + L3 and the retroarch menu is accessed with select + X. Navigation of the retroarch menu is the same as the defaul settings in retorarch, but each button press will experience a short delay (50 milliseconds) as an a consequence of the key remapping. These delays will not be experienced in game.

A full list of remapped controls is available at https://github.com/fry-guy/piboy-keymaps/blob/main/MM3%20KEY%20GUIDE.txt.
