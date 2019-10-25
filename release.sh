#!/usr/bin/env bash
echo "git clean -Xdf"
echo "rm -rf $(pwd)/bin/$BASEDIR"
echo "make clean"
echo "make fclean"
echo "rm -rf $(pwd)/$BASEDIR"
read -r -p "Commands above will be executed  (for moulinettability) are you sure? [y/N] " response
case "$response" in
	[yY][eE][sS]|[yY])
		BASEDIR=$(dirname "$0")
		echo "Lol please use copy/paste"
        ;;
	*)
		;;
esac
