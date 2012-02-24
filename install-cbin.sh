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

echo "PATH=\$PATH:$thisdir" >> $rcfile

echo "Wrote"
echo "PATH=\$PATH:$thisdir"
echo "to $rcfile."
echo
echo "Run \"source $rcfile\" to begin using cbin."
