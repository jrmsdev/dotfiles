#!/bin/bash
set -eu

umask 0027

PATH=/usr/bin:/bin
DIR_MODE=0750
#FILE_MODE=0640
BUP_TSTAMP=$(date '+%Y%m%d-%H%M%S')

PREFIX=${PREFIX:-${HOME}}

install_source_check() {
	local filename=$1
	local src=${PWD}/${filename}
	grep -F "jrmsdev/dotfiles ${filename}" "${src}" >/dev/null || {
		echo "ERROR: jrmsdev/dotfiles ${filename} - install not enabled" >&2
		return 9
	}
	return 0
}

#install_file() {
#	local filename=$1
#	install_source_check "${filename}"
#	local src=${PWD}/${filename}
#	local dst=${PREFIX}/${filename}
#	local bup=${filename}.${BUP_TSTAMP}
#	install -v -C -m "${FILE_MODE}" -b -B "${bup}" "${src}" "${dst}"
#	return $?
#}

install_symlink() {
	local filename=$1
	install_source_check "${filename}"
	local src=${PWD}/${filename}
	local dst=${PREFIX}/${filename}
	local bup=${filename}.${BUP_TSTAMP}
	if test -e "${dst}"; then
		if ! test -L "${dst}"; then
			mv -vf "${dst}" "${PREFIX}/${bup}"
		fi
	else
		mkdir -vp "$(dirname "${dst}")"
	fi
	echo -n 'Symlink: '
	ln -vsf "${src}" "${dst}"
}

echo "Source: ${PWD}"
echo "Dest: ${PREFIX}"

install -v -d -m "${DIR_MODE}" "${PREFIX}"

./ls-files.sh | while read -r filename; do
	install_symlink "${filename}"
done

exit 0
