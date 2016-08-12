#!/bin/bash
dir=~/dotfiles
olddir=~/dotfiles_old
files="vimrc vim"
echo -n "Creating $olddir for backups..."
mkdir -p $olddir
echo "done"

cd $dir
for file in $files; do
	echo "move exisiting dotfiles from ~ to $olddir"
	mv ~/.$file ~/$olddir/
	echo "creating symlinks"
	ln -s $dir/$file ~/.$file
done
