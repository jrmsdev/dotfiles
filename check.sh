#!/bin/sh
set -eux
shellcheck ./*.sh
shellcheck -s bash .bash_profile .bashrc
