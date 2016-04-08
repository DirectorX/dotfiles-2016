#!/bin/bash
if [[ -z $(amixer get Master | grep off) ]]; then
	MSG=
else 
	MSG=
fi
VOL=$(amixer get Master | egrep -o "[0-9]+%"|head -n 1|sed 's/\%//g')
printf -v o "%02d" $VOL
echo $MSG $o%

