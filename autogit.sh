#!/bin/bash

######################################
# ██████╗ ███╗   ██╗██╗   ██╗██╗  ██╗#
#██╔═══██╗████╗  ██║╚██╗ ██╔╝╚██╗██╔╝#
#██║   ██║██╔██╗ ██║ ╚████╔╝  ╚███╔╝ #
#██║   ██║██║╚██╗██║  ╚██╔╝   ██╔██╗ #
#╚██████╔╝██║ ╚████║   ██║   ██╔╝ ██╗#
# ╚═════╝ ╚═╝  ╚═══╝   ╚═╝   ╚═╝  ╚═╝#
######################################


if [ $# -eq 0 ]; then
	echo "NO COMMIT MESSAGE CONFIRMED"
	exit 1
fi

git add .
git status

echo -n "Continue pushing the git? (y/n) :"
read confirm

if [ "$confirm" != "y" ]; then
echo "Canceled push"
exit 1
fi

git commit -m "$*"

git push

echo "GIT PUSH COMPLETED"
