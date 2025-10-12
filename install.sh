#!/bin/bash
set -eu

umask 0027

PATH=/usr/bin:/bin
DIR_MODE=0750
FILE_MODE=0640
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

install_file() {
	local filename=$1
	local src=${PWD}/${filename}
	local dst=${PREFIX}/${filename}
	local bup=${filename}.${BUP_TSTAMP}
	install_source_check "${filename}"
	grep -F "jrmsdev/dotfiles ${filename}" "${src}" >/dev/null || {
		echo "ERROR: jrmsdev/dotfiles ${filename} - install not enabled" >&2
		return 9
	}
	install -v -C -m "${FILE_MODE}" -b -B "${bup}" "${src}" "${dst}"
	return 0
}

echo "Source: ${PWD}"
echo "Dest: ${PREFIX}"

install -v -d -m "${DIR_MODE}" "${PREFIX}"

install_file .vimrc
install_file .wezterm.lua

exit 0
