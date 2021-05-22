#! /bin/bash

brightness_file=/sys/class/backlight/intel_backlight/brightness

if [ -z $1 ];then
	echo "Entrez un multiple de 10 entre 10 et 100."
elif [ -n $1 ];then
	case $1 in
		"10")
			echo -n 10000 > $brightness_file
			;;
		"20")
			echo -n 20000 > $brightness_file
			;;
		"30")
			echo -n 30000 > $brightness_file
			;;
		"40")
			echo -n 40000 > $brightness_file
			;;
		"50")
			echo -n 50000 > $brightness_file
			;;
		"60")
			echo -n 60000 > $brightness_file
			;;
		"70")
			echo -n 60000 > $brightness_file
			;;
		"80")
			echo -n 70000 > $brightness_file
			;;
		"90")
			echo -n 80000 > $brightness_file
			;;
		"100")
			echo -n 96000 > $brightness_file
			;;
		*)
			echo "Entrez un multiple de 10 entre 10 et 100."
			;;
	esac
fi
