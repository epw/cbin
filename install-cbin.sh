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
echo

echo "PATH=\$PATH:$thisdir" | tee -a $rcfile
echo "source $thisdir/.cbashrc" | tee -a $rcfile

echo
echo "to $rcfile."
echo
echo "Run \"source $rcfile\" to begin using cbin."
