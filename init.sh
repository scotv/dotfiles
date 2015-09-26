#!/bin/bash
############################
# .make.sh
# This script creates symlinks from the home directory to any desired dotfiles in ~/dotfiles
############################

########## Variables

dir=~/repo/dotfiles			# dotfiles directory
olddir=~/repo/dotfiles.d		# old dotfiles backup directory
# list of files/folders to symlink in homedir
files="bashrc gitconfig vim vimrc atom"
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
  touch ~/.$file
  if ([ ! -L ~/.$file ]) &&
    ([ -f ~/.$file ] || [ -d ~/.$file ]);
  then
    echo "Backuping ~/.$file to $olddir/"
    cp -ru ~/.$file $olddir/
    echo "Moving ~/.$file to $dir/"
    mv ~/.$file $dir/$file
    echo "Creating symlink named .$file in ~ directory to $dir/$file"
    ln -s $dir/$file ~/.$file
  else
    echo "Skipped the existed file (.$file) created before"
  fi
done

cd ~
###############apply shell script files
for file in $dir/sh/*.sh; do
    sh_file="${file##*/}"
    if ([ ! -L ~/$sh_file ]);
    then
        echo "Creating symlink named $sh_file in ~ directory to $dir/sh/$sh_file"
        ln -s $dir/sh/$sh_file ~/$sh_file
     fi
done
