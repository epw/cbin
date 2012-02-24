#! /bin/bash

rcfile=$HOME/.bashrc
if [ $# -gt 0 ]
then
    rcfile=$1
fi

thisdir=`pwd | sed "s#$HOME#\\\$HOME#"`

if [ -n "`tail -1 $rcfile`" ]
then
    echo >> $rcfile
fi

echo "Writing"


echo "PATH=\$PATH:$thisdir" | tee $rcfile
echo "source $thisdir/.cbashrc"

echo "to $rcfile."
echo
echo "Run \"source $rcfile\" to begin using cbin."
