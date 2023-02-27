#!/bin/bash

sudo /opt/retropie/supplementary/xboxdrv/bin/xboxdrv >> /dev/shm/runcommand.log 2>&1  \
    --evdev /dev/input/event0 \
    --detach-kernel-driver \
    --silent \
    --quiet \
    --force-feedback \
    --deadzone-trigger 45% \
    --deadzone 65% \
    --trigger-as-button \
    --four-way-restrictor \
    --axismap -y1=y1,-y2=y2,-trigger=trigger \
    --mimic-xpad \
    --evdev-absmap ABS_X=x1,ABS_Y=y1 \
    --evdev-keymap BTN_EAST=b,BTN_SOUTH=a,BTN_WEST=y,BTN_NORTH=x,BTN_Z=lb,BTN_C=rb,BTN_TL=tl,BTN_TR=tr,BTN_THUMBL=guide,BTN_SELECT=back,BTN_START=start,BTN_DPAD_DOWN=dd,BTN_DPAD_UP=du,BTN_DPAD_LEFT=dl,BTN_DPAD_RIGHT=dr \
	--ui-buttonmap dd^auto:250:500=KEY_UP,du^auto:250:500=KEY_DOWN,dl^auto:250:500=KEY_LEFT,dr^auto:250:500=KEY_RIGHT \
	--ui-buttonmap start=KEY_Y:KEY_ENTER:250,back=KEY_ESC:KEY_ESC:250 \
		--ui-buttonmap dd+start=KEY_Y,du+start=KEY_ENTER,dd+back=KEY_N,du+back=KEY_ESC \
	--ui-buttonmap lb=KEY_Q:KEY_I:250 \
		--ui-buttonmap lb+dd=KEY_F,lb+dr^click-press=KEY_R+KEY_D+KEY_E+KEY_ESC,lb+du=KEY_C,lb+dl=KEY_S+KEY_A \
	--ui-buttonmap y=KEY_M:KEY_V:250 \
	--ui-buttonmap x=KEY_ENTER:BTN_LEFT:150 \
		--ui-buttonmap dd+a=KEY_B,du+a=KEY_R \
	--ui-buttonmap rb=KEY_C \
	    --ui-buttonmap dr+rb=KEY_ENTER+KEY_C,du+rb=KEY_ESC+KEY_C+KEY_N \
	--ui-buttonmap b=KEY_F:KEY_F12:500 \
		--ui-buttonmap dd+b^click-press=KEY_U,dr+b=KEY_N:KEY_ENTER:200,du+b=KEY_O \
	--ui-buttonmap a=KEY_A:KEY_A:500 \
	--ui-buttonmap guide=KEY_LEFTCTRL,tl^click-press=KEY_SPACE,tr^click-press=KEY_F12 \
	--ui-buttonmap tr+guide=KEY_TAB,back+x=KEY_LEFTALT+KEY_F11 \
    --ui-buttonmap tr+lb=KEY_F1:KEY_F1:500,tr+y=KEY_F2:KEY_F2:500,tr+x=KEY_F3:KEY_F3:500,tr+rb=KEY_F4:KEY_F4:500,tr+b=KEY_F5:KEY_F5:500,tr+a=KEY_F6:KEY_F6:500,tr+back=KEY_F7:KEY_F7:500,tr+start=KEY_F8:KEY_F8:500 \
	--ui-axismap tr+x1=KEY_F10:KEY_F8,tr+y1=KEY_F7:KEY_F9 \
	--ui-buttonmap tl+lb=KEY_1,tl+y=KEY_2,tl+x=KEY_3,tl+rb=KEY_4,tl+b=KEY_5,tl+a=KEY_6 \
	--ui-axismap tl+x1=KEY_0+KEY_LEFT:KEY_8+KEY_RIGHT:2000,tl+y1=KEY_7:KEY_9:2000 \
	--ui-axismap tr+y1=KEY_UP:KEY_DOWN:2000,tr+x1=KEY_LEFT:KEY_RIGHT:2000 \
	--ui-buttonmap tr+tl=KEY_RIGHTCTRL \
    --ui-buttonmap dd+lb=KEY_B+KEY_D,dr+lb=KEY_F,du+lb=KEY_I+KEY_T,dl+lb=KEY_R \
	--ui-buttonmap dd+y=KEY_S+KEY_W+KEY_T+KEY_H:KEY_Y:750,dr+y=KEY_D+KEY_A+KEY_F:KEY_Y:750,du+y=KEY_M+KEY_U+KEY_I:KEY_Y:750 \
	--ui-buttonmap dd+x^click-press=KEY_O+KEY_G+KEY_Y,dr+x=KEY_B+KEY_W,du+x^click-press=KEY_E+KEY_S+KEY_N,dl+x=KEY_D \
	--ui-buttonmap tl+dr=KEY_S+KEY_E:KEY_U:750,tl+dl=KEY_R:KEY_D:750 \
    --ui-buttonmap tl+du^auto:250:250=cycle-key-named:list:KEY_1:KEY_2:KEY_3:KEY_4:KEY_5:KEY_6:KEY_7:KEY_8:KEY_9:KEY_0 \
    --ui-buttonmap tl+dd^auto:250:250=cycle-key-ref:list:backward \
    --ui-buttonmap tr+dd=KEY_S:KEY_B,tr+du=KEY_R:KEY_D+KEY_I \
    --ui-buttonmap y+dd=KEY_S:KEY_Y:750,y+dr=KEY_F:KEY_Y:750,y+du=KEY_I:KEY_Y:750 \
    --ui-buttonmap tr+dr^auto:250:250=cycle-key-named:characters:KEY_F1:KEY_F2:KEY_F3:KEY_F4:KEY_F5:KEY_F6 \
    --ui-buttonmap tr+dl^auto:250:250=cycle-key-ref:characters:backward \
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
	--ui-axismap x1=REL_X:15:20,y1=REL_Y:15:20,y2=REL_WHEEL:5:100,x2=REL_HWHEEL:5:100,trigger=REL_WHEEL:5:100 \
    &

xinit /home/pi/RetroPie/roms/ports/MM3Start_Mod -- vt$(fgconsole) >> /dev/shm/runcommand.log 2>&1 

sudo killall xboxdrv >> /dev/shm/runcommand.log 2>&1 
