#!/usr/bin/env bash

echo "packing src file"
cd ~/repo/dotfiles
tar -cjvf ~/repo/dotfiles/dotfiles-sh.tar -C ~/repo/dotfiles/os/src .
echo "uploading"
cd ~/repo/dotfiles
