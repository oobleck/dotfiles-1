#!/usr/bin/env bash
set -eu

# Symlink X11 settings

# initialize script and dependencies -------------------------------------------
# get this bootstrap folder
cd "$(dirname "$0")"/..
dotfiles_path="$(pwd)"
bootstrap_path="$dotfiles_path/bootstrap"
source "$bootstrap_path/helpers.sh"

# begin ------------------------------------------------------------------------
dkostatus "Symlinking X11 dotfiles"
# this probably isn't sourced by your session
dkosymlink linux/x/.xbindkeysrc .xbindkeysrc
dkosymlink linux/x/.xinitrc     .xinitrc
dkosymlink linux/x/.xprofile    .xprofile

