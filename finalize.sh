#!/usr/bin/env bash
# shellcheck disable=SC1090

set -e
SCRIPTPATH="$( cd "$(dirname "$0")" ; pwd -P )"

cd $HOME/voice-recognizer-raspi && source env/bin/activate

make -f $SCRIPTPATH/Makefile final

sudo systemctl enable voice-recognizer

src/main.py

sudo reboot
