# piboy-keymaps

This is a collection of launch scripts with custom keymaps to assist in playing DOS-based CRPGs designed for keyboard and mouse on handheld controller-based devices using DosBox-Pure libretro core in RetroArch on RetroPie. All remaps are implimented using xboxdvr (https://xboxdrv.gitlab.io/).

These scripts were created for use on the Raspberry Pi-based PiBoy DMG handheld device, but should also work on other systems, possibly requiring minor tweaks to the button codes on Line 14. A six-button layout with trigger buttons, dpad and at least one clickable joystick is required. To learn your device's specific button code, SSH into your device and run "evtest", select the number associated with your controller and press a key to output it's device-specific button code.

A full list of Linux virtual keyboard codes are available at https://manpages.ubuntu.com/manpages/focal/man7/virkeycode-linux.7.html. Xboxdvr documentation is available at https://xboxdrv.gitlab.io/xboxdrv.html.

<u><b>Script setup</b></u>

<b>Might and Magic III: Isles of Terra</b>

To use this script, "Might and Magic III.sh" must be placed in the "ports" folder in Retroarch and the game file ("Might and Magic III - Isles of Terra.dosz") must be placed in the /home/pi/RetroPie/roms/pc/ folder. Additionally, "Might & Magic III - Isles of Terra.cfg" must be placed in the /opt/retropie/configs/pc/DOSBox-pure folder. (This second file will remap the retroarch menu hotkey to F11, which is required to prevent the first character window from opening every time the system menu is activated.) 

Users will also need to remap the virtual keyboard in DosBox-Pure to the controller button whose default keyboard map is left-control in RetroArch. (Key 9 on the PiBoy DMG.) This can be done within the game from the retroarch system menu under "Controls --> Port 1 Controls." 

You can also choose to launch from your pc games folder; however, this requires _wine = "XINIT:wine_desktop %ROM%"_ be added as a line in to /opt/retropie/configs/pc/emulators.cfg and "wine" be selected as the emulator option for this game at startup. The extentions ".sh" and ".SH" will also need to be added as options to the pc section of the systems.cfg file at /opt/retropie/configs/all/emulationstation

<b>Might and Magic IV & V: World of Xeen</b>

To use this script, "Might and Magic - World of Xeen.sh" must be placed in the "ports" folder in Retroarch and the game file ("Might and Magic IV & V - World of Xeen.dosz") must be placed in the /home/pi/RetroPie/roms/pc/ folder. Additionally, "Might & Magic IV & V - World of Xeen.cfg" must be placed in the /opt/retropie/configs/pc/DOSBox-pure folder. 

Additional setup instructions are the same as the steps outlined for Might and Magic III.

<u><b>Overview of key mapping</u></b>

Might and Magic III: Isles of Terra and Might and Magic IV & V: World of Xeen are early '90s computer-based RPGs that came out prior to many standard conventions of computer game navigation. (e.g. No WASD navigation, etc.) It also makes extensive use of many keyboard keys, including nearly every number or function key, as well as a keys whose function alters based upon context (i.e. R functions as "rest," "retreat," or "rumor" depending on the current menu screen). The wide and varying use of keys renders playing these games with a controller a challenge. Use of the the powerful xboxdvr tool allows a standard 10-button controller (plus dpad and clickable joystick) to significantly expand the range of these inputs. Hightlights include:

The right and left trigger buttons in this remap scheme are used extentively to modify the function of the other controller buttons. By holding down the left trigger, for example, players can access the F1-F8 function keys with the six face buttons (C, B, A, Z, Y, and X), plus start and select. By holding down the right trigger button, players can also access keys 1, 2, 3, 4, 5, 6, 7, 8, 9, and 0 with the front buttons (1-6) or the the left joystick (7, 8, 9, and 0, clockwise starting from Y+). Additionally, the left joytick can  be used for navigation while holding left trigger. The left or right sidestep function are also unlocked in this mode through the use of the right trigger.

Similair to the right and left trigger buttons, the dpad functions as a modifier for menus within most shops and other locations (e.g. temples, taverns, training grounds, magic guides, etc.) with the upper arrow activing the first menu item in conjunction with a controller button assigned to that shop, the right arrow for the second menu option, and so forth moving clockwise around the dpad. The controller key assigned to each location is primarily based upon the game's assignment of keyboard keys, as many controller buttons are configured to return multiple keypresses due to the relatively limited number of remappable button combos (e.g.: The Tavern and the Temple menus are assigned to different controller keys (Y and Z, respectively) since D activates Donate or Drink based upon the location, whereas the same controller button can function for the Tavern and Magic Guild since their menu keys (D, F, T, and R versus G, B, and S) do not overlap.) Several less common locations do not follow this precise scheme due to limited remappable options. Multiple key presses are invisible to the user since the keyboard remaps have been tested to avoid overlapping commands in game. 

The lower three controller buttons (C, B, and A) are primarily used for combat and employ parallel conventions for similiar functions. For example, the menu to alter the default behavior of the fight button (B) can be modified through the use of the down arrow prior to its selection, after which the user can cycle new options (attack, cast, block or run) with the right arrow in combination with B or confirmation the new selection with a long press of the selection combo. Similiarly, the cast button (C) opens the new spell menu in combination with the down arrow, confirms a spells selection with the right arrow, and casts the new spell with a long press of the selection combo. The attack button (A) is also modified based upon the up or down arrow, with up for attack and down for block/defend.

A number of other common functions are also mapped to the arrow keys in combination with the right or left triggers. For instance, armor and weapons can be rapidly equopped or removed through the use of the right trigger -- also the primary toggle for inventory management -- in combination with the dpad. Some buttons also feature a "hold to confirm" option, such as selling or fixing armor or weapons in shops. Healing and training can also occur by holding a trigger button in combination with a face button, providing an even faster alternative to the location-based arrow/button combos.

Several buttons' functions are modified through a long press. A long press of the map key (Y) will open the quest log and a long press of the quick reference button will open the game information window (date, time, year, etc.), for example. A long press of the Enter (start) and Esc (select) keys will also input a Y or a N, respectively, as many menus use these different inputs interchangably. Users can also opt to quick select Enter or Y versus Esc or N through the use of the arrow keys, with the down arrow triggering a Enter/Esc or the up arrow triggering a Y/N.

The left joystick and X button function as a mouse pointer and left mouse button. A click of the L3 button will open the virual keyboard. The in game menu is accessed with the right triggler + L3 and the retroarch menu is accessed with select + X. Navigation of the retroarch menu is the same as the defaul settings in retorarch, although each button press will experience a short delay (500 milliseconds) as an a consequence of the key remapping. These delays will not be experienced in game.

A quick reference sheet with the full list of remapped controls is available at https://github.com/fry-guy/piboy-keymaps/blob/main/MM3%20KEY%20GUIDE.txt.

<u><b>Legal copy</u></b>

Might and Magic 1-6 can be purchased on GOG at https://www.gog.com/game/might_and_magic_6_limited_edition.

