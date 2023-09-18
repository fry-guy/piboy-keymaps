These scripts enable the use of a controller with DOS-based CRPGs in RetroPie, despite the fact these games were originally developed for a keyboard and mouse. The collection currently includes Might and Magic III: Isles of Terra (1991) and Might and Magic IV & V: World of Xeen (1994), but additional games may be added. All remaps are implimented using xboxdrv (https://xboxdrv.gitlab.io/).

The scripts were created for use on the PiBoy DMG, a Raspberry Pi-based handheld gaming device, but should also work on other systems, possibly requiring minor tweaks to the button codes on Line 14. (To learn your device's specific button codes, SSH into your device and run "evtest", select the number associated with your controller and press a key to output it's device-specific button code.) A six-button layout with trigger buttons, dpad and at least one clickable joystick is required.

A full list of Linux virtual keyboard codes are available at https://manpages.ubuntu.com/manpages/focal/man7/virkeycode-linux.7.html. Xboxdvr documentation is available at https://xboxdrv.gitlab.io/xboxdrv.html.

Please note this script requires the installation of the DosBox-Pure emulator in RetroPie. This emulator should be available under the experimental packages section of the RetroPie Setup menu.

<u><b>Script setup</b></u>

<b>Might and Magic III: Isles of Terra</b>

To use this script, users must place "MM3Start" and "MM3.sh" in the "ports" folder of RetroPie and "Might & Magic III - Isles of Terra.cfg" in the /opt/retropie/configs/all/retroarch/config/DOSBox-pure/ folder. (This second file will remap the retroarch menu hotkey from F1 to F11, which is required to prevent the first character window from briefly opening every time the menu is activated.) Users must also place the game file ("Might & Magic III - Isles of Terra.dosz") in /home/pi/RetroPie/roms/pc/ folder. 

Prior to zipping the game files, I also highly recommend applying <a href="http://www.jeffludwig.com/mm3/resources.php">Jeff Ludwig's decryption patch</a>, which virtually eliminiates load times as your party traverses the map, as well as removes several bugs present in the original game. (You can apply the patch with a program such as <a href="https://www.romhacking.net/utilities/240/">Lunar IPS</a>.)

Next, use the chmod +x command to make these files executable:

chmod +x  /home/pi/RetroPie/roms/ports/MM3Start</br>
chmod +x  /home/pi/RetroPie/roms/ports/MM3.sh

Next, create a subfolder named /xboxdrv_macros in the /ports folder and copy the macro files from /xboxdrv_macros in this repository. These macros will enable the use of key combinations that autofill the fast travel codes at Magic Mirrors throughout the game. The codewords include fast travel for all five towns, four regions, and the Arena.

After resetting EmulationStation, MM3 should show up in your Ports folder. This is the entry used to launch the game. (You can also launch the game normally from the PC folder in RetroPie, of course, but it will not use the custom controls.)

Lastly, after launching the game, users must remap the virtual keyboard in DosBox-Pure to the controller button whose default keyboard map is left-control in RetroArch. (Key 9 on the PiBoy DMG.) This can be done within the game from the retroarch system menu under "Controls --> Port 1 Controls." This step is required to enable virtual keyboard support in game.

For a complete list of the new controls, see https://github.com/fry-guy/piboy-keymaps/blob/main/MM3_KEY_GUIDE.txt.

<b>Might and Magic IV & V: World of Xeen</b>

To use this script, users must place "MM45Start" and "MM45.sh" in the "pc" folder of RetroPie and "Might & Magic IV & V - World of Xeen.cfg" in the /opt/retropie/configs/all/retroarch/config/DOSBox-pure/ folder. Users must also place the game file ("Might & Magic IV & V - World of Xeen.dosz") in the /home/pi/RetroPie/roms/pc/ folder.

Next, use the chmod +x command to make these files executable:

chmod +x  /home/pi/RetroPie/roms/ports/MM45Start</br>
chmod +x  /home/pi/RetroPie/roms/ports/MM45.sh

After resetting EmulationStation, MM45 should show up in your Ports folder. This is the entry used to launch the game.

Virtual keyboard setup instructions are the same as outlined for Might and Magic III.

For a complete list of the new controls, see https://github.com/fry-guy/piboy-keymaps/blob/main/MM4-5_KEY_GUIDE.txt.

<u><b>Might and Magic III instructions</u></b>

Might and Magic III: Isles of Terra and Might is an early '90s computer-based RPGs that came out before many of the standard conventions of modern computer game navigation. (e.g. No WASD controls, no standard "exit" key, etc.) The game also makes extensive use of many keyboard keys, including nearly every number or function key, as well as keys whose function alter based upon context (e.g.: The r key selects "rest," "retreat," "return," "recharge," or "rumor," depending on the situation). 

The wide and various use of keyboard commands makes playing these games with a controller a challenge. The use of the powerful xboxdrv tool allows a standard controller to significantly expand the range of these inputs with tricks such as the ability to alter key inputs based upon button combinations, the amount of time a button is held down, sequential or cyclical ordering of inputs, and the ability to covert analog input to keyboard input. In the case of the PiBoy DMG, six face buttons – x, y, z, c, b, and a – a right and left trigger button, a start and select button, a directional pad, and a clickable left joystick are more than sufficent to provide every key required to play the game. <i>(The four cardinal directions of the joystick can also function as button inputs under certain conditions.)</i>

Please note the instructions will indicate whether a button should be clicked, briefly held (aka “long pressed”) or held down. No button will ever need to be briefly held longer than 1 second to activate, although many buttons commands — both clicked or briefly held — requre some other button to remain held down. Most briefly held buttons activate between 250 to 500 milliseconds. A click should not last longer than 300 milliseconds.
 
<b>Character menus and inventory</b>
 
The six face buttons, plus the start and select buttons, correspond to the six characters in your party, plus hirings, moving left to right across the three rows, top to bottom. (e.g.: x for character 1, y for character 2, z for character 3, c for character 4, b for character 5, a for character 6, and start and select for character 7 and 8, respectively.) To open a character sheet, hold the left trigger, then click the button that corresponds to the desired character. (To jump straight into the character’s inventory, briefly hold character button instead.) To open the inventory from the character sheet, briefly hold the y button — or briefly hold the character button without releasing the left trigger.* To cycle through characters, click the right or left dpad buttons without releasing the left trigger. To select a character attribute, use with the dpad to highlight the attribute and then click the a button to open the attribute information.
 
To select an item in the inventory, hold the right trigger and then select the button that corresponds with the item number. (To enter numbers, click x for 1, y for 2, z for 3, c for 4, b for 5, a for 6, start for 7, select for 8, left joystick east for 9, and left joystick west for 0).** To scroll the inventory, use dpad up or down without releasing the right trigger. To page up or down, move left joystick north (up) or south (down) without releasing the right trigger. To equip or unequip an item, click the left trigger (equip) or right trigger (unequip) without releasing the right trigger. To use or discard an item, briefly hold the left trigger (use) or right trigger (discard) without releasing the right trigger.

To pass a selected item between two characters, click the button that corresponds to the target character without releasing the right trigger. To go straight to the inventory of the character who received the item, briefly hold the button after the item transfers.

<i>Optional: Holding the select button will activate a second, optional control scheme for navigating the inventory. The following commands require that you to continue to hold the select button: 

To move across characters, click the left or right triggers. To navigate the inventory, click the y (up) and b (down) buttons. To page up and down, click the z button. (Click to page down or briefly hold to page up.) To clear a selection, click the c button.*** To equip or unequip an item, use the a button. (Click to equip or briefly hold to unequip). To use or discard an item, use the x button. (Click to use or briefly hold to discard.) To exit the inventory, briefly hold the start button. To re-open the inventory screen from the character sheet, click the start button.

Tip: Swapping between holding the select button (for swapping characters) and right trigger (for navigating inventory and equipping or removing items) and will allow you to manage inventories across multiple characters with maximum efficiency.</i>
 
<b>Spell sheets</b>
 
To open the spell menu, click the c button. To open the new spell menu, briefly hold the c button. To navigate the spell list, click dpad up or down. To highlight a spell, hold right trigger and then click dpad up or down. (Alternately, you may elect to jump directly to a spell slot with same buttons combination used to select item in the inventory.) 

To choose the spell, click start. To cast the spell, click the c button.
 
Some spells require additional input after casting:
 
·      To choose a character to heal or apply some other status effects (bless, holy shield, etc.), hold the right trigger and then click the button that corresponds to the target character.
 
·      For elemental spells, hold the c button and then click the dpad to choose an element (e.g.: dpad up is fire, dpad right is electricity, dpad down is cold, and dpad left is acid).
 
·      For items spells, hold the c button and then click dpad up to enchant; dpad right to recharge, and dpad down to duplicate.
 
·      For Lloyd’s Beacon, hold the c button and then click dpad left to set the beacon or dpad right to return to a set beacon.
 
<i>Optional: Continuing to hold the c button after opening a new spell window will activate a second, optional control scheme for spell casting. The following commands require that you to continue to hold the c button:

To move across characters, click the b (left) or a (right) buttons. To go up or down the spell slots, click the y (up) or x (down) buttons. To page up and down, click the left (page up) and right (page down) triggers. To select and then immediately cast a spell, click the start button. To exit the menu, hold the start button.</i>
 
<i>Exploration</i>
 
To traverse the map, use the dpad or hold the right or left trigger and use the left joystick. To sidestep, hold the right and left triggers and then use the east or west directionals on the left joystick.
 
To interact with an object, click the right trigger. To use the mouse pointer, use the left joystick to control the pointer and then briefly hold x button to left click. To choose “yes” or “no,” click the start or select button, respectively. (To choose enter or escape, briefly hold the start or select button, respectively.)***
 
To open the map, click the y button. To view the quest log, briefly hold the y button. To view the quick reference chart (date, time, status effects, etc.), click the z button. To view Corak’s notes, briefly hold the z button. To cast Wizard’s Eye, hold the b button, then click the y button.*****
 
To shoot an arrow or bash a wall, hold the left trigger and then click dpad up. (Click to shoot or briefly hold to bash.) To rest or dismiss a party member, hold the left trigger and then click dpad down. (Click to rest or briefly hold to dismiss.) To choose a character for dismissal, hold the right trigger and then click the button that corresponds to the target character.
 
<b>Combat</b>
 
To combat, click the a button to attack or the b button to execute a quick fight action (attack, block, cast, or retreat). To open the quick fight action selection menu, hold the b button and then hold the dpad right button to cycle options. To set a quick fight action, hold the dpad down button and then click the b button, or simply click the start button.

Other commands in combat mode are block and retreat (click the a button after holding down dpad up or dpad down, respectively), and cast (click the c button, or see section titled “spell sheets”). Spell menus function the same in combat or exploration mode.

<b>NPC shops</b>
 
Each shop (temple, etc.) is assigned to one of several top row face buttons – x, y, or z. Hold down a dpad  button and then click the button assigned to the shop to select. In general, the dpad button to hold correspond to menu items in a clockwise direction (e.g. the dpad up is option 1, dpad right is option 2, dpad down is option 3, and the dpad left is option 4).

<i>Blacksmith, Training grounds, and Temple – Y</i>

In the blacksmith’s shop, hold the y button and then click dpad up or dpad down to open the buy menu or the sell menu, respectively. To navigate items within the shops, use the same buttons used to navigate items in the inventory. 

In the buy menu, click the y button while holding dpad up to open the weapon’s menu, dpad right to open the armour menu, or dpad down to open the miscellaneous menu. 

In sell menu, click the y button while holding dpad up to sell an item, dpad right to fix an item, or dpad down to identify an item. (Sell menu actions require a “yes” to confirm the action. In each case, continue to hold the y button to confirm the action.

In the temple, click the y button while holding dpad up to heal, dpad right to donate, or dpad down to uncurse.

In the training grounds, click the y button while holding dpad up to train.

<i>Tavern and Guild – Z</i>

In the tavern, click the z button while holding dpad up to order a drink, dpad right to order food, dpad down to give a tip, or dpad left to hear a rumor.

In the guild, click the z button while holding dpad up to open the guild information, dpad right to buy spells, or dpad down to see spell information. Use the same buttons to navigate these spell lists that are used to navigate spell sheets or the inventory. 

<i>Bank – X</i>
 
In the bank, click the x button while holding dpad up to choose gold or dpad down to choose gems, then click the x button a second time while holding dpad left to make a deposit or dpad right to make a withdrawal. Use the same buttons used to choose to inventory items (1-9, and 0) to enter gold or gem amounts.

<i>Inn</i>

In the inn, hold the right trigger and then click dpad left to remove a character or hold the left trigger and briefly hold dpad down to delete a character. To create a new character, click the c button. In the character creation menu, use the mouse pointer to create a character. The left joystick acts as a mouse pointer. To left click the virtual mouse,” briefly hold the a button.

<i>Magic mirrors</i>

Magic mirrors provide fast travel to various locations on the word map with a secret code. To enter a fast travel code, hold the left joystick button and then click the z button for HOME (Fountain Head), the y button for SEADOG (Baywatch), the x button for FREEMAN (Wildabar), the c button for DOOMED (Swamptown), the b button for REDHOT (Blistering Heights), the a button for ARENA (The Arena), dpad up for FIRE (Area C2 X12 Y0), dpad right for EARTH (Area E4 X3 Y3), dpad down for WATER (Area E3 X7 Y10), or dpad left for AIR (Area F1 X0 Y12). For all other passwords, use the virtual keyboard – see below.

</i>Menus</i>

To open the in-game menu, hold the left trigger and click the left joystick button. (The left joystick also acts as a mouse pointer. To left click this virtual mouse,” briefly hold the a button. To open a virtual keyboard, click the left joystick button.

To open or close the RetroArch menu, hold the start button and then click the select button. To use the enter key, click dpad right without releasing the start button. To use the escape key, click dpad left without releasing the start button. To navigate the menus, click dpad up or dpad down — or use the left joystick — without releasing the start button. 

*You can also use the left joystick button – without releasing the left trigger – to open the inventory menu of the currently selected character from their character sheet screen. (This is useful if you do not want to bother to locate the button assigned to a given character to open their inventory.)

**These button combinations can also be used to enter numbers for the teleportation spell, gem or gold totals for the bank, or coordinates for the Interspatial Transport Box.
 
***This function does not work if the inventory has six or fewer items. In this case, use the y (up) or b (down) buttons navigate to an unoccupied item slot and equip (if item is equipped) or remove (if item is unequipped) to clear the selection.
 
****Alternately, to choose yes or no, hold the up button and then use start or select, respectively. To choose enter or escape, hold the down button and then use start or select, respectively.
 
*****Requires a sorcerer in the sixth character slot with complete spellbook.

<u><b>Quick reference sheet</u></b>

A quick reference sheet with the full list of remapped controls is available at https://github.com/fry-guy/piboy-keymaps/blob/main/MM3_KEY_GUIDE.txt and https://github.com/fry-guy/piboy-keymaps/blob/main/MM4-5_KEY_GUIDE.txt.

<u><b>Video demonstration</u></b>

A video demonstration of the controller script in action is available at https://youtu.be/SBv9RiQN-sU.

<u><b>Legal copy</u></b>

Might and Magic 1-6 is <a href="https://www.gog.com/game/might_and_magic_6_limited_edition">available for purchase on GOG</a>. 

