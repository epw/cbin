#! /bin/bash

if [[ $# -lt 1 ]]; then
    echo "Usage: $0 <name>"
    exit 1
fi

HOST=g2.pacew.org

ssh eric@$HOST sh /home/eric/git/local-new-git-repo.sh "$1"
git clone "eric@$HOST:git/$1"
cd "$1"
git checkout -b main
git-touch .gitignore
echo "*~" > .gitignore
