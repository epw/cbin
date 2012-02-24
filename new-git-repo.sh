#! /bin/bash

ssh eric@willisson.org sh /home/eric/git/local-new-git-repo.sh "$1"
git clone "eric@willisson.org:git/$1"
