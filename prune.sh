#!/bin/bash
set -eu
cd "${HOME}"
rm -vrf 'Library/Application Support/VSCodium'
rm -vrf '.config/rio'
rm -vf  '.wezterm.lua'
