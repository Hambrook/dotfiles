#!/bin/bash

# Useful when set to a custom keyboard shortcut

amixer set Capture toggle

killall notify-osd;
if [[ `amixer get Capture | grep '\[off\]'` ]]; then
	notify-send 'Microphone DISABLED';
else
	notify-send 'Microphone ENABLED';
fi
