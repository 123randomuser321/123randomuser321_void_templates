#!/bin/sh
# This is not a smart approach

copy_specific() {

	case "$2" in

		freac) cp -r -t "$1"/srcpkgs srcpkgs/BoCA srcpkgs/BoCA-devel srcpkgs/smooth srcpkgs/smooth-devel srcpkgs/freac ;;
		makemkv) cp -r -t "$1"/srcpkgs srcpkgs/makemkv srcpkgs/makemkv-bin srcpkgs/makemkv-libaacs srcpkgs/makemkv-oss ;;
		citra-git|ffmpeg|flips-git|mangadesk|r8168-dkms|rockpro64-u-boot) cp -r -t "$1"/srcpkgs srcpkgs/"$2" ;;
		*) echo "Unknown pkg"; exit 1 ;;

	esac

}
