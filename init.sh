#!/bin/bash
############################
# .make.sh
# This script creates symlinks from the home directory to any desired dotfiles in ~/dotfiles
############################

########## Variables

dir=~/dotfiles				# dotfiles directory
olddir=~/dotfiles.d			# old dotfiles backup directory
# list of files/folders to symlink in homedir
files="bashrc gitconfig vim vimrc"
##########

# create dotfiles_old in homedir
echo "Creating $olddir for backup of any existing dotfiles in ~"
mkdir -p $olddir
echo "...done"

# change to the dotfiles directory
echo "Changing to the $dir directory"
cd $dir
echo "...done"

# move any existing dotfiles in homedir to dotfiles.d directory, then create symlinks 
# DO ignore the link file created before
for file in $files; do
    if ([ ! -L ~/.$file ]) && 
	([ -f ~/.$file ] || [ -d ~/.$file ]); 
    then
        echo "Moving ~/.$file to $olddir/"
        mv ~/.$file $olddir/

	echo "Creating symlink named .$file in ~ directory to $dir/$file."
	ln -s $dir/$file ~/.$file
    else
	echo "Skipped the existed file (.$file) created before"
    fi
    
done
