#!/bin/sh
# (POSIX compliant)

NAME=Sisyphus

l=0
while true
do
	while [ $l -lt ${#NAME} ]
	do
		if [ $l -eq 0 ]
		then
			echo
		else
			printf '%s' $NAME | cut -c 1-$l
		fi
		l=$((l+1))
	done
	while [ $l -gt 0 ]
	do
		if [ $l -eq 0 ]
		then
			echo
		else
			printf '%s' $NAME | cut -c 1-$l
		fi
		l=$((l-1))
	done
done
