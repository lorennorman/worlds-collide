#!/bin/zsh

git pull
rm dist/worlds_collide.dmg
/Applications/Godot.app/Contents/MacOS/Godot --headless --export-release mac
