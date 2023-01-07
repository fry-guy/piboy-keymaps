This is a collection of launch scripts with custom keymaps that allow DOS-based CRPGs -- developed for use with a keyboard and mouse on handheld controllers -- to be played with a controller on RetroPie. The collection currently only features Might and Magic III: Isles of Terra (1991) and Might and Magic IV & V: World of Xeen (1994), but additional games may be added. All remaps are implimented using xboxdrv (https://xboxdrv.gitlab.io/).

These scripts were created for use on the Raspberry Pi-based PiBoy DMG handheld device, but should also work on other systems, possibly requiring minor tweaks to the button codes on Line 14. (To learn your device's specific button codes, SSH into your device and run "evtest", select the number associated with your controller and press a key to output it's device-specific button code.) A six-button layout with trigger buttons, dpad and at least one clickable joystick is required.

A full list of Linux virtual keyboard codes are available at https://manpages.ubuntu.com/manpages/focal/man7/virkeycode-linux.7.html. Xboxdvr documentation is available at https://xboxdrv.gitlab.io/xboxdrv.html.

Please also note this script requires the installation of the DosBox-Pure emulator in RetroPie. This emulator should be available under the experimental packages section of the RetroPie Setup menu.

<u><b>Script setup</b></u>

<b>Might and Magic III: Isles of Terra</b>

To use this script, users must place "MM3Start" and "MM3.sh" in the "ports" folder of RetroPie and "Might & Magic III - Isles of Terra.cfg" in the /opt/retropie/configs/all/retroarch/config/DOSBox-pure/ folder. (This second file will remap the retroarch menu hotkey from F1 to F11, which is required to prevent the first character window from opening every time the system menu is activated.) Users must also place the game file ("Might & Magic III - Isles of Terra.dosz") in /home/pi/RetroPie/roms/pc/ folder. 

Use the chmod +x command to make both files executable:

chmod +x  /home/pi/RetroPie/roms/ports/MM3.sh</br>
chmod +x  /home/pi/RetroPie/roms/ports/MM3Start

After resetting EmulationStation, MM3.sh should show up in your Ports folder. This is the file used to launch the game.

Lastly, after launching the game, users must remap the virtual keyboard in DosBox-Pure to the controller button whose default keyboard map is left-control in RetroArch. (Key 9 on the PiBoy DMG.) This can be done within the game from the retroarch system menu under "Controls --> Port 1 Controls." This step is required to enable virtual keyboard support in game.

<b>Might and Magic IV & V: World of Xeen</b>

To use this script, users must place "MM45Start" and "MM45.sh" in the "pc" folder of RetroPie and "Might & Magic IV & V - World of Xeen.cfg" in the /opt/retropie/configs/all/retroarch/config/DOSBox-pure/ folder. Users must also place the game file ("Might & Magic IV & V - World of Xeen.dosz") in the /home/pi/RetroPie/roms/pc/ folder. 

User the chmod +x command to make both files executable:

chmod +x  /home/pi/RetroPie/roms/ports/MM45.sh</br>
chmod +x  /home/pi/RetroPie/roms/ports/MM45Start

After resetting EmulationStation, MM45.sh should show up in your Ports folder. This is the file used to launch the game.

Virtual keyboard setup instructions are the same as outlined for Might and Magic III.

<u><b>Overview of key mapping</u></b>

Might and Magic III: Isles of Terra and Might and Magic IV & V: World of Xeen are early '90s computer-based RPGs that came out before many of the standard conventions of modern computer game navigation. (e.g. No WASD controls, no standard "exit" key, etc.) The games also make extensive use of many keyboard keys, including nearly every number or function key, as well as a keys whose function alter based upon context (e.g. keyboard key "r" might function as "rest," "retreat," or "rumor" depending on the situation). The wide and varying use of keys renders playing these games with a controller a challenge. Use of the powerful xboxdrv tool allows a standard 10-button controller (plus dpad and clickable joystick) to significantly expand the range of these inputs. Here is an overview of many of the features of these scripts:

The right and left trigger buttons in this remap scheme are used extentively to modify the function of the other controller buttons. By holding down the left trigger, for example, players can access the F1-F8 function keys with the six face buttons (C, B, A, Z, Y, and X), plus start and select. By holding down the right trigger button, players can also access keys 1, 2, 3, 4, 5, 6, 7, 8, 9, and 0 with the front buttons (1-6) or the the left joystick (7, 8, 9, and 0, clockwise starting from Y+), easing inventory management. Additionally, the left joytick can  be used for navigation while holding left trigger. The left or right sidestep action is also accessible in this mode through the use of the right trigger. Common exploration options (shoot, bash, rest, etc.) are also mapped to right and left trigger combos. 

Similair to the right and left trigger buttons, the dpad functions as a modifier for menus within most shops and other locations (e.g. temples, taverns, training grounds, magic guides, etc.) with the upper arrow activing the first menu item in conjunction with a controller button assigned to that shop, the right arrow for the second menu option, and so forth moving clockwise around the dpad. (The same convention is used in combination with the C button to select the element for the elemental arrow or elemental protection spells.) The controller key assigned to each location is primarily based upon the cluster of keyboard keys used in each location, as many controller buttons are configured to return multiple keypresses due to the relatively limited number of remappable button combos (e.g.: The Tavern and the Temple menus are assigned to different controller keys (Y and Z, respectively) since D activates Donate or Drink based upon the location, whereas the same controller button can function for the Tavern and Magic Guild since these locations' key clusters (D, F, T, and R versus G, B, and S) do not overlap.) Several less common locations do not follow this precise scheme due to limited remappable options. These differences are noted in the quick reference documents linked below. Multiple key inputs per individual button presses are invisible to the user since the button remaps have been tested to avoid triggering multiple keyboard commands in the game. 

The lower three controller buttons (C, B, and A) are primarily used for combat and employ parallel conventions for similiar functions. For example, the menu to alter the default behavior of the fight button (B) can be modified in combination with the down arrow, after which the user can cycle new options (attack, cast, block or run) with the right arrow in combination with the B button, or confirm the new selection with a long press of the same combo. Similiarly, the cast button (C) opens the new spell menu in combination with the down arrow, confirms a spells selection with the right arrow, and casts the new spell with a long press of the same combo. The attack button (A) is also modified based upon the up or down arrow, with up for attack and down for block/defend.

A number of other common functions are also mapped to the arrow keys in combination with the right or left triggers. For instance, armor and weapons can be rapidly equipped or removed through the use of the right trigger -- also the primary toggle for inventory management -- in combination with the dpad. Some buttons also feature a "hold to confirm" option, such as selling or fixing armor or weapons in shops. Healing and training can also occur by holding a trigger button in combination with a face button, providing an even faster alternative to the location-based arrow/button combos.

Several buttons' functions are modified through a long press. In Might and Magic III, for example, a long press of the map key (Y) will open the quest log and a long press of the quick reference button (Z) will open the game information window (date, time, year, etc.). A long press of the Enter (start) and Esc (select) keys will also input a Y or a N, respectively, as many menus use these different inputs interchangably. Users can also opt to quick select Enter or Y versus Esc or N through the use of the arrow keys, with the down arrow triggering a Enter/Esc or the up arrow triggering a Y/N. (Up + X or Down + X also trigger Y and N, respectively.)

The left joystick and X button function as a mouse pointer and left mouse button. The A button functions as Enter. A click of the L3 button will open the virual keyboard. The in game menu is accessed with the right triggler + L3 and the retroarch menu is accessed with select + X. Navigation of the retroarch menu is the same as the defaul settings in retorarch, although each button press will experience a short delay as an a consequence of the key remapping. These delays will not be experienced in game.

<u><b>Quick reference sheet</u></b>

A quick reference sheet with the full list of remapped controls is available at https://github.com/fry-guy/piboy-keymaps/blob/main/MM3_KEY_GUIDE.txt and https://github.com/fry-guy/piboy-keymaps/blob/main/MM4-5_KEY_GUIDE.txt.

<u><b>Video demonstration</u></b>

A video demonstration of the controller script in action is available at https://youtu.be/SBv9RiQN-sU.

<u><b>Legal copy</u></b>

Might and Magic 1-6 is available for purchase on GOG at https://www.gog.com/game/might_and_magic_6_limited_edition.

