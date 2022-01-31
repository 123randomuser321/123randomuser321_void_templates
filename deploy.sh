#!/bin/sh
# This is a small helper script to 'deploy' my files into your
# void-packages clone


show_help() {

	cat << _EOF
	[VOID_DIR] ./deploy.sh


	Environment:

	VOID_DIR=<your void-packages>
		Pass this variable to tell the script where exactly your
		void-packages clone/fork resides.
		Will default to "$HOME/stuff/gitstuff/void-packages".


	Options:

	-h
		Print this message.

_EOF

}


while getopts ":h" opt; do

	case $opt in

		h)
			show_help
			exit 0
			;;

		\?)
			show_help
			exit 1
			;;

	esac

done


if [ ! -e "$(pwd)/deploy.sh" ]; then

	echo "Please execute the script from its original directory"
	exit 1

fi


if [ -z "$VOID_DIR" ]; then

	VOID_DIR="$HOME/stuff/gitstuff/void-packages"

fi


if [ ! -d "$VOID_DIR" ]; then

	echo "non-existent directory"
	exit 1

else

	if [ ! -e "$VOID_DIR/xbps-src" ]; then

		echo "xbps-src does not exist in given directory"
		exit 1

	fi

fi


cat common/shlibs.123 >> "$VOID_DIR/common/shlibs"
cp -r srcpkgs "$VOID_DIR"

echo "Don't forget to git-clean and git-reset your directory when you're done!"
