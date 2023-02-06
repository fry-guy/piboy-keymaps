#!/bin/bash

#xinit /dev/shm/retropie_xinitrc -- vt1 -keeptty >> /dev/shm/runcommand.log 2>&1 

#wine_desktop  >> /dev/shm/runcommand.log 2>&1 

#sudo killall >> /dev/shm/runcommand.log 2>&1 

sudo /opt/retropie/supplementary/xboxdrv/bin/xboxdrv >> /dev/shm/runcommand.log 2>&1  \
    --evdev /dev/input/event0 \
    --detach-kernel-driver \
    --silent \
    --force-feedback \
    --deadzone-trigger 45% \
    --deadzone 65% \
    --trigger-as-button \
    --four-way-restrictor \
    --axismap -y1=y1,-y2=y2,-trigger=trigger \
    --mimic-xpad \
    --evdev-absmap ABS_X=x1,ABS_Y=y1 \
    --evdev-keymap BTN_EAST=b,BTN_SOUTH=a,BTN_WEST=y,BTN_NORTH=x,BTN_Z=lb,BTN_C=rb,BTN_TL=tl,BTN_TR=tr,BTN_THUMBL=guide,BTN_SELECT=back,BTN_START=start,BTN_DPAD_DOWN=dd,BTN_DPAD_UP=du,BTN_DPAD_LEFT=dl,BTN_DPAD_RIGHT=dr \
	--ui-buttonmap start=KEY_ENTER:KEY_Y:500,back=KEY_ESC:KEY_N:500,dd^auto:250:500=KEY_UP,du^auto:250:500=KEY_DOWN,dl^auto:250:500=KEY_LEFT,dr^auto:250:500=KEY_RIGHT \
	--ui-buttonmap b=KEY_F:KEY_ESC:300,x=BTN_LEFT,a=KEY_ENTER:KEY_ENTER:150,dd+a=KEY_A,du+a=KEY_B,rb=KEY_C,lb=KEY_Q:KEY_I:250,y=KEY_M:KEY_V:250,guide=KEY_LEFTCTRL,tl^click-press=KEY_SPACE,tr^click-press=KEY_F12 \
	--ui-buttonmap tr+guide=KEY_TAB,back+x=KEY_LEFTALT+KEY_F11 \
    --ui-buttonmap tr+lb=KEY_F1,tr+y=KEY_F2,tr+x=KEY_F3,tr+rb=KEY_F4,tr+b=KEY_F5,tr+a=KEY_F6,tr+back=KEY_F7,tr+start=KEY_F8 \
	--ui-axismap tr+x1=KEY_F10:KEY_F8,tr+y1=KEY_F7:KEY_F9 \
	--ui-buttonmap tl+lb=KEY_1,tl+y=KEY_2,tl+x=KEY_3,tl+rb=KEY_4,tl+b=KEY_5,tl+a=KEY_6 \
	--ui-axismap tl+x1=KEY_0+KEY_LEFT:KEY_8+KEY_RIGHT:2000,tl+y1=KEY_7:KEY_9:2000 \
	--ui-axismap tr+y1=KEY_UP:KEY_DOWN:2000,tr+x1=KEY_LEFT:KEY_RIGHT:2000 \
	--ui-buttonmap tr+tl=KEY_RIGHTCTRL \
	--ui-buttonmap tr+dd=KEY_S+KEY_U:KEY_Y:750,tr+dr=KEY_B+KEY_E+KEY_F:KEY_Y:750,tr+du=KEY_D+KEY_I:KEY_Y:750,tr+dl^click-press=KEY_H+KEY_T+KEY_G+KEY_R \
	--ui-buttonmap tl+dr=KEY_E:KEY_U:500,tl+dl=KEY_R:KEY_D:500 \
    --ui-buttonmap dd+rb=KEY_F,dr+rb=KEY_E+KEY_ENTER:KEY_ENTER+KEY_C:250,du+rb=KEY_N+KEY_C,dl+rb=KEY_A \
    --ui-buttonmap dd+lb=KEY_G+KEY_B+KEY_D,dr+lb=KEY_B+KEY_F,du+lb=KEY_S+KEY_I+KEY_T,dl+lb=KEY_R \
	--ui-buttonmap dd+b^click-press=KEY_U,dr+b=KEY_N:KEY_U+KEY_ENTER:250,du+b=KEY_O \
	--ui-buttonmap dd+x^click-press=KEY_O+KEY_Y,dr+x=KEY_W,du+x^click-press=KEY_E+KEY_N,dl+x=KEY_D \
	--ui-buttonmap dd+y=KEY_S+KEY_W+KEY_T+KEY_H,dr+y^click-press=KEY_D+KEY_A+KEY_F,du+y=KEY_M+KEY_I+KEY_U \
	--ui-buttonmap dd+start=KEY_Y,dd+back=KEY_N,du+start=KEY_ENTER,du+back=KEY_ESC \
	--ui-buttonmap b+y=macro:/home/pi/RetroPie/roms/ports/xboxdrv_macros/wizeye.macro \
	--ui-buttonmap guide+lb=macro:/home/pi/RetroPie/roms/ports/xboxdrv_macros/home.macro \
	--ui-buttonmap guide+y=macro:/home/pi/RetroPie/roms/ports/xboxdrv_macros/seadog.macro \
	--ui-buttonmap guide+x=macro:/home/pi/RetroPie/roms/ports/xboxdrv_macros/freeman.macro \
	--ui-buttonmap guide+rb=macro:/home/pi/RetroPie/roms/ports/xboxdrv_macros/doomed.macro \
	--ui-buttonmap guide+b=macro:/home/pi/RetroPie/roms/ports/xboxdrv_macros/redhot.macro \
	--ui-buttonmap guide+a=macro:/home/pi/RetroPie/roms/ports/xboxdrv_macros/arena.macro \
	--ui-buttonmap guide+dd=macro:/home/pi/RetroPie/roms/ports/xboxdrv_macros/fire.macro \
	--ui-buttonmap guide+dr=macro:/home/pi/RetroPie/roms/ports/xboxdrv_macros/earth.macro \
	--ui-buttonmap guide+du=macro:/home/pi/RetroPie/roms/ports/xboxdrv_macros/water.macro \
	--ui-buttonmap guide+dl=macro:/home/pi/RetroPie/roms/ports/xboxdrv_macros/air.macro \
       --ui-buttonmap tl+du^auto:250:250=cycle-key:KEY_0:KEY_1:KEY_2:KEY_3:KEY_4:KEY_5:KEY_6:KEY_7:KEY_8:KEY_9 \
       --ui-buttonmap tl+dd^auto:250:250=cycle-key:KEY_9:KEY_8:KEY_7:KEY_6:KEY_5:KEY_4:KEY_3:KEY_2:KEY_1:KEY_0 \
	--ui-axismap x1=REL_X:15:20,y1=REL_Y:15:20,y2=REL_WHEEL:5:100,x2=REL_HWHEEL:5:100,trigger=REL_WHEEL:5:100 \
    &

#"/opt/retropie/supplementary/runcommand/runcommand.sh" 0 _SYS_ "pc" "/home/pi/RetroPie/roms/pc/Might & Magic 3-6/Might & Magic III - Isles of Terra.dosz" >> /dev/shm/runcommand.log 2>&1 

xinit /home/pi/RetroPie/roms/ports/MM3Start_Mod -- vt$(fgconsole) >> /dev/shm/runcommand.log 2>&1 

sudo killall xboxdrv >> /dev/shm/runcommand.log 2>&1 
