#!/bin/bash
#Assignment 2
#Author: Emily Vanderveer
#This script accepts command line lists and parses them with a :
#If there is a leading : it will replace it with .:
#If there is a trailing : it will replace it with a :.
#If there are double : it will replace them with :.:
#usage: clean_list [list]
#

NP=
for P in `echo $@ | sed -e 's/^:/.:/' -e 's/::/:.:/' -e 's/:$/:./' -e 's/:/ /g'`
    do
    case $NP in
    "")
            NP="$P"   
    ;;
    $P|$P:*|*:$P:*|*:$P)
        continue
        ;;
    *)
            NP="$NP:$P"  
        ;;
        esac
    done
echo $NP

