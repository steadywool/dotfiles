#!/bin/bash

MENU="fuzzel -d -w 75 -l 20"

case ${1} in
    '-s' | '--select')
        cliphist list | sed 's/\t/ /g' | ${MENU} | sed 's/ /\t/g' | cliphist decode | wl-copy
    ;;
    '-d' | '--delete')
        cliphist list | sed 's/\t/ /g' | ${MENU} | sed 's/ /\t/g' | cliphist delete
    ;;
esac
