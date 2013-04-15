#!/bin/bash
DOTFILES=$(find . -maxdepth 1 \( -iname '*~' -o -iname '.*' \) -type f)
for file in $DOTFILES; do
	dfile=$(basename "$file")
	echo "$dfile"
	diff $dfile ~/$dfile
done