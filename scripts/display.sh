#! /bin/bash
# Monitor Script
# Version 1.0
# Developed By Darren M. OConnell <oconmail.doconnell@gmail.com>
#
# Script To Adjust Monitor Brightness And To Turn On and OFF Monitors
#
# Use xrandr to determine names of monitors and replace as needed
MON1='DVI-I-1' #Replace Whats In Quotes With The Output From Xrandr.
MON2='HDMI-1'  #Add Additional Monitors As Needed

case $1 in
	normal | Normal | night | Night | full | Full | 10 | 1.0 )
		xrandr --output $MON1 --brightness 1.0
		xrandr --output $MON2 --brightness 1.0
		;;
	9 | 0.9 )
		xrandr --output $MON1 --brightness 0.9
		xrandr --output $MON2 --brightness 0.9
        	;;

	8 | 0.8 )
		xrandr --output $MON1 --brightness 0.8
		xrandr --output $MON2 --brightness 0.8
		;;

	morning | Morning | 7 | 0.7 )
		xrandr --output $MON1 --brightness 0.7
		xrandr --output $MON2 --brightness 0.7
	        ;;

	6 | 0.6 )
		xrandr --output $MON1 --brightness 0.6
		xrandr --output $MON2 --brightness 0.6
        	;;

	5 | 0.5 )
		xrandr --output $MON1 --brightness 0.5
		xrandr --output $MON2 --brightness 0.5
       		;;

	migraine | Migraine | 4 | 0.4)
		xrandr --output $MON1 --brightness 0.4
		xrandr --output $MON2 --brightness 0.4
		;;

	3 | 0.3 )
		xrandr --output $MON1 --brightness 0.3
		xrandr --output $MON2 --brightness 0.3
       		;;
	dim | Dim | min | Min | 2 | 0.2 )
		xrandr --output $MON1 --brightness 0.2
		xrandr --output $MON2 --brightness 0.2
       		;;
	1 | 0.1 )
		xrandr --output $MON1 --brightness 0.1
		xrandr --output $MON2 --brightness 0.1
       		;;
	dual | Dual | dual-left | Dual-Left | dl | DL)
		xrandr --output $MON1 --mode 1920x1080 --left-of $MON2
		;;
	dual-right | Dual-Right | dr | DR)
                xrandr --output $MON1 --mode 1920x1080 --right-of $MON2
                ;;
	dual-below | Dual-Below | db | DB)
                xrandr --output $MON1 --mode 1920x1080 --below $MON2
                ;;
	dual-Above | Dual-Above | da | DA)
                xrandr --output $MON1 --mode 1920x1080 --above $MON2
                ;;
	single | Single)
		xrandr --output $MON1 --off  #Change to match setup
		;;
	help | Help | ?)
		echo "This script is used to adjust monitors. Most usefull on a laptop. Must have xrandr install."
		echo "Normal|Night|Full|10 = 100% Brightness"
		echo "Migraine|4 =  40% Brightness"
		echo "Morning|7 =  70% Brightness"
		echo "Dim|Min|2 = 20% Brightness"
		echo "Dual|Dual-Left = Activate Both Monitors (Mon1 Left of Mon2)"
		echo "Dual-Right = Activate Both Monitors (Mon1 Right of Mon2)"
		echo "Dual-Below = Activate Both Monitors (Mon1 Below Mon2)"
		echo "Dual-Above = Activate Both Monitors (Mon1 Above Mon2)"
		echo "Single = Activate Only 1 Monitor"
		;;

	*)
		echo "error"
		;;

esac
