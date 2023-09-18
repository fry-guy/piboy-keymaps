These scripts enable the use of a controller with DOS-based CRPGs in RetroPie, despite the fact these games were originally developed for a keyboard and mouse. The respository currently includes scripts for Might and Magic III: Isles of Terra (1991) and Might and Magic IV & V: World of Xeen (1994). All remaps are implimented using xboxdrv (https://xboxdrv.gitlab.io/).

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

The wide and various use of keyboard commands makes playing these games with a controller a challenge. The use of the powerful xboxdrv tool allows a standard controller to significantly expand its range of inputs with tricks such as the ability to alter key inputs based upon button combinations or button press lengths, the ability to advance along a sequence of multiple keys with same button, and the ability to covert analog input to key input. In the case of the PiBoy DMG, six face buttons – <b>x</b>, <b>y</b>, <b>lz</b>, <b>c</b>, <b>b</b>, and <b>a</b> – a <b>right</b> and <b>left trigger</b> button, a <b>start</b>l and <b>select button</b>, a dpad (<b>dpad up</b>, <b>dpad right</b>, <b>dpad down</b>, and <b>dpad left</b>), and a <b>left joystick</b> with <b>l3</b> input are more than sufficent to provide every key required to play the game. 

Please note the instructions will indicate whether <b>a button</b> should be clicked, briefly held or held down. No button will ever need to be briefly held longer than 1 second to activate, although man<b>y button</b>s commands — both clicked or briefly held — requre some other button remain held down. Most briefly held buttons activate at 500 milliseconds or less. A click should not last longer than 300 milliseconds.
 
<b><i>Character menus and inventory</b></i>
 
The six face buttons, plus the <b>start</b> and <b>select buttons</b>, correspond to the six characters in your party, plus hirings, moving left to right across the three rows, top to bottom. (e.g.: <b>x for character 1</b>, <b>y for character 2,</b> <b>b for character 3</b>, <b>c for character 4</b>, <b>b for character 5</b>, <b>a for character 6</b>, and <b>start</b> and <b>select for character 7 and 8</b>, respectively.) To open a character sheet, hold the <b>left trigger</b>, then click the button that corresponds to the desired character. (To jump straight into the character’s inventory, briefly hold character button instead.) To open the inventory from the character sheet, briefly hold the <b>y button</b> — or briefly hold the character button without releasing the <b>left trigger</b>.* To cycle through characters, click the <b>right</b> or <b>left dpad</b> buttons without releasing the <b>left trigger</b>. To select a character attribute, use the <b>dpad</b> to highlight the attribute and then click the <b>a button</b> to open the attribute information.
 
To select an item in the inventory, hold the <b>right trigger</b> and then choose the button that corresponds with the item number. (To enter numbers, click <b>x for 1</b>, <b>y for 2</b>, <b>z for 3</b>, <b>c for 4</b>, <b>b for 5</b>, <b>a for 6</b>, <b>start for 7</b>, <b>select for 8</b>, <b>left joystick</b> east for 9, and <b>left joystick</b> west for 0).† To scroll the inventory, use <b>dpad up</b> or down without releasing the <b>right trigger</b>. To page up or down, move <b>left joystick</b> north (up) or south (down) without releasing the <b>right trigger</b>. To equip or unequip an item, click the <b>left trigger</b> (equip) or <b>right trigger</b> (unequip) without releasing the <b>right trigger</b>. To use or discard an item, briefly hold the <b>left trigger</b> (use) or <b>right trigger</b> (discard) without releasing the <b>right trigger</b>.

To pass a selected item between two characters, click the button that corresponds to the target character without releasing the <b>right trigger</b>. To go straight to the inventory of the character who received the item, briefly hold the button after the item transfers.

<i>Optional: Holding the <b>select button</b> will activate a second, optional control scheme for navigating the inventory. The following commands require that you to continue to hold the <b>select button</b>: 

To move across characters, click the <b>left</b> or <b>right triggers</b>. To navigate the inventory, click the <b>y (up)</b> and <b>b (down)</b> buttons. To page up and down, use the <b>z button</b>. (Click to page down or briefly hold to page up.) To clear a selection, click the <b>c button</b>.‡ To equip or unequip an item, use the <b>a button</b>. (Click to equip or briefly hold to unequip). To use or discard an item, use the <b>x button</b>. (Click to use or briefly hold to discard.) To exit the inventory, briefly hold the <b>start button</b>. To re-open the inventory screen from the character sheet, click the <b>start button</b>.

Tip: Swapping between holding the <b>select button</b> (for swapping characters) and <b>right trigger</b> (for navigating inventory and equipping or removing items) and will allow you to manage inventories across multiple characters with maximum efficiency.</i>
 
<b><i>Spell sheets</b></i>
 
To open the spell menu, click the <b>c button</b>. To open the new spell menu, briefly hold the <b>c button</b>. To navigate the spell list, click <b>dpad up</b> or <b>down</b>. To highlight a spell, hold <b>right trigger</b> and then click <b>dpad up</b> or <b>down</b>. (Alternately, you may elect to jump directly to a spell slot with same buttons combination used to select item in the inventory.) 

To choose the spell, click the <b>start button</b>. To cast the spell, click the <b>c button</b>.
 
Some spells require additional input after casting:
 
<ul> 
<li>To choose a character to heal or apply some other status effects (heroism, bless, power shield, etc.), hold the <b>right trigger</b> and then click the button that corresponds to the target character.</li>
 
<li>For elemental spells, hold the <b>c button</b> and then click the <b>dpad</b>b> to choose an element (e.g.: <b>dpad up is fire</b>, <b>dpad right is electricity</b>, <b>dpad down is cold</b>, and <b>dpad left is acid</b>).</li>
 
<li>For items spells, hold the <b>c button</b> and then click <b>dpad up</b> to enchant; <b>dpad right</b> to recharge, and <b>dpad down</b> to duplicate.</li>
 
<li>For Lloyd’s Beacon, hold the <b>c button</b> and then click <b>dpad left</b> to set the beacon or <b>dpad right</b> to return to a set beacon.</li>
</ul>
 
<i>Optional: Continuing to hold the <b>c button</b> after opening a new spell window will activate a second, optional control scheme for spell casting. The following commands require that you to continue to hold the <b>c button</b>:

To move across characters, click the <b>b (left)</b> or a <b>(right) buttons</b>. To go up or down the spell slots, click the <b>y (up)</b> or <b>x (down) buttons</b>. To page up and down, click the <b>left (page up)</b> and <b>right (page down) triggers</b>. To select and then immediately cast a spell, click the <b>start button</b>. To exit the menu, hold the <b>start button</b>.</i>
 
<i><b>Exploration</i></b>
 
To traverse the map, use the <b>dpad</b> or hold the <b>right</b> or <b>left trigger</b> and use the <b>left joystick</b>. To sidestep, hold the <b>right</b> and <b>left trigger</b>s and then use the <b>east</b> or <b>west directionals</b> on the <b>left joystick</b>.
 
To interact with an object, click the <b>right trigger</b>. To use the mouse pointer, use the <b>left joystick</b> to control the pointer and then briefly hold <b>x button</b> to left click. To choose “yes” or “no,” click the <b>start</b> or <b>select button</b>, respectively. (To choose enter or escape, briefly hold the <b>start</b> or <b>select button</b>, respectively.)‡
 
To open the map, click the <b>y button</b>. To view the quest log, briefly hold the <b>y button</b>. To view the quick reference chart (date, time, status effects, etc.), click the <b>z button</b>. To view Corak’s notes, briefly hold the <b>z button</b>. To cast Wizard’s Eye, hold the <b>b button</b>, then click the <b>y button</b>.¶
 
To shoot an arrow or bash a wall, hold the <b>left trigger</b> and then use <b>dpad up</b>. (Click to shoot or briefly hold to bash.) To rest or dismiss a party member, hold the <b>left trigger</b> and then use <b>dpad down</b>. (Click to rest or briefly hold to dismiss.) To choose a character for dismissal, hold the <b>right trigger</b> and then click the button that corresponds to the target character.
 
<i><b>Combat</b></i>
 
To combat, click the <b>a button</b> to attack or the <b>b button</b> to execute a quick fight action (attack, block, cast, or retreat). To open the quick fight action selection menu, hold the <b>b button</b> and then hold the <b>dpad right</b> button to cycle options. To set a quick fight action, hold the <b>dpad down</b> button and then click the <b>b button</b>, or simply click the <b>start button</b>.

Other commands in combat mode are block and retreat (click the <b>a button</b> after holding down <b>dpad up</b> or <b>dpad down</b>, respectively), and cast (click the <b>c button</b>, or see section titled “spell sheets”). Spell menus function the same in combat or exploration mode.

<i><b>NPC shops</b></i>
 
Each shop (temple, etc.) is assigned to one of several top row face buttons – <b>x</b>, <b>y</b>, or <b>z</b>. To select a menu item in the shop, hold down a <b>dpad button</b> and then click the face button associated with the shop. In general, the <b>dpad button</b> to hold will correspond to the shop's menu items in a clockwise direction (e.g. the <b>dpad up is option 1</b>, <b>dpad right is option 2</b>, <b>dpad down is option 3</b>, and the <b>dpad left is option 4</b>).

<i>Blacksmith, Training grounds, and Temple – Y</i>

In the <i>blacksmith’s shop</i>, hold the <b>y button</b> and then click <b>dpad up</b> or <b>dpad down</b> to open the buy menu or the sell menu, respectively. To navigate items within the shops, use the same buttons used to navigate items in the inventory. 

In the buy menu, click the <b>y button</b> while holding <b>dpad up</b> to open the weapon’s menu, <b>dpad right</b> to open the armour menu, or <b>dpad down</b> to open the miscellaneous menu. 

In sell menu, click the <b>y button</b> while holding <b>dpad up</b> to sell an item, <b>dpad right</b> to fix an item, or <b>dpad down</b> to identify an item. (Sell menu actions require a “yes” to confirm the action. In each case, continue to hold the <b>y button</b> to confirm the action.)

In the <i>temple</i>, click the <b>y button</b> while holding <b>dpad up</b> to heal, <b>dpad right</b> to donate, or <b>dpad down</b> to uncurse.

In the <i>training grounds</i>, click the <b>y button</b> while holding <b>dpad up</b> to train.

<i>Tavern and Guild – Z</i>

In the <i>tavern</i>, click the <b>z button</b> while holding <b>dpad up</b> to order a drink, <b>dpad right</b> to order food, <b>dpad down</b> to give a tip, or <b>dpad left</b> to hear a rumor.

In the <i>guild</i>, click the <b>z button</b> while holding <b>dpad up</b> to open the guild information, <b>dpad right</b> to buy spells, or <b>dpad down</b> to see spell information. Use the same buttons to navigate these spell lists that are used to navigate spell sheets or the inventory. 

<i>Bank – X</i>
 
In the <i>bank</i>, click the <b>x button</b> while holding <b>dpad up</b> to choose gold or <b>dpad down</b> to choose gems, then click the <b>x button</b> a second time while holding <b>dpad left</b> to make a deposit or <b>dpad right</b> to make a withdrawal. Use the same buttons used to choose to inventory items (<b>1-9</b>, and <b>0</b>) to enter gold or gem amounts.

<i>Inn</i>

In the <i>inn</i>, hold the <b>right trigger</b> and then click <b>dpad left</b> to remove a character or hold the <b>left trigger</b> and briefly hold <b>dpad down</b> to delete a character. To create a new character, click the <b>c button</b>. In the character creation menu, use the mouse pointer to create a character. The <b>left joystick</b> acts as a mouse pointer. To left click the virtual mouse, briefly hold the <b>a button</b>.

<b><i>Magic mirrors</i></b>

Magic mirrors provide fast travel to various locations on the word map with a secret code. To enter a fast travel code, hold the <b>left joystick</b> button and then click the <b>z button for HOME</b> (Fountain Head), the <b>y button for SEADOG</b> (Baywatch), the <b>x button for FREEMAN</b> (Wildabar), the <b>c button for DOOMED</b> (Swamptown), the <b>b button for REDHOT</b> (Blistering Heights), the <b>a button for ARENA</b> (The Arena), <b>dpad up for FIRE</b> (Area C2 X12 Y0), <b>dpad right for EARTH</b> (Area E4 X3 Y3), <b>dpad downfor WATER</b>  (Area E3 X7 Y10), or <b>dpad left for AIR</b> (Area F1 X0 Y12). For all other passwords, use the virtual keyboard – see below.

<b><i>Menus</i></b>

To open the in-game menu, hold the <b>left trigger</b> and click the <b>left joystick</b> button. (The <b>left joystick</b> also acts as a mouse pointer. To left click this virtual mouse, briefly hold the <b>a button</b>. To open a virtual keyboard, click the <b>left joystick</b> button.

To open or close the RetroArch menu, hold the <b>start button</b> and then click the <b>select button</b>. To use the enter key, click <b>dpad right</b> without releasing the <b>start button</b>. To use the escape key, click <b>dpad left</b> without releasing the <b>start button</b>. To navigate the menus, click <b>dpad up</b> or <b>dpad down</b> — or use the <b>left joystick</b> — without releasing the <b>start button</b>. 

*You can also use the <b>left joystick</b> button – without releasing the <b>left trigger</b> – to open the inventory menu of the currently selected character from their character sheet screen. (This is useful if you do not want to bother to locate the button assigned to a given character to open their inventory.)

†These button combinations can also be used to enter numbers for the teleportation spell, gem or gold totals for the bank, coordinates for the Interspatial Transport Box, etc.
 
‡This function does not work if the inventory has six or fewer items. In this case, use the <b>y (up)</b> or <b>b (down) buttons</b> navigate to an unoccupied item slot and equip (if item is equipped) or remove (if item is unequipped) to clear the selection.
 
§Alternately, to choose yes or no, hold the up button and then use start or select, respectively. To choose enter or escape, hold the <b>down button</b> and then use the <b>start</b> or <b>select buttons</b>, respectively.
 
¶Requires a sorcerer in the sixth character slot with complete spellbook.

<u><b>Quick reference sheet</u></b>

A quick reference sheet with the full list of remapped controls is available at https://github.com/fry-guy/piboy-keymaps/blob/main/MM3_KEY_GUIDE.txt and https://github.com/fry-guy/piboy-keymaps/blob/main/MM4-5_KEY_GUIDE.txt.

<u><b>Video demonstration</u></b>

A video demonstration of the controller script in action is available at https://youtu.be/SBv9RiQN-sU.

<u><b>Legal copy</u></b>

Might and Magic 1-6 is <a href="https://www.gog.com/game/might_and_magic_6_limited_edition">available for purchase on GOG</a>. 

