#!/usr/bin/env bash

# wget -qO- https://raw.githubusercontent.com/scozv/dotfiles/master/os/ubuntu-server.sh | bash

{
  df_echo() {
      echo
      echo "### $1"
      echo
  }

  df_echo "download the environment scripts"
  mkdir -p ~/opt/.df
  wget -O ~/opt/.df/dotfiles.tar.gz https://github.com/scozv/dotfiles/archive/master.tar.gz
  tar -xf ~/opt/.df/dotfiles.tar.gz -C ~/opt/.df/

  DF_OS_PATH="~/opt/.df/dotfiles-master/os/src"

  df_echo "define temporary functions"
  . $DF_OS_PATH/00_define_functions.sh

  df_echo "apt sources"
  . $DF_OS_PATH/03_apt_sources.sh
  df_echo "system configure"
  . $DF_OS_PATH/05_system_config.sh

  df_echo "install the packages (same as ubuntu-server.sh)"
  . $DF_OS_PATH/10/wget_curl.sh
  . $DF_OS_PATH/10/7z_unzip.sh
  . $DF_OS_PATH/10/jdk_scala.sh
  . $DF_OS_PATH/10/mongo-3.sh
  . $DF_OS_PATH/10/nodejs-5.sh
  . $DF_OS_PATH/10/ruby.sh
  . $DF_OS_PATH/10/vim.sh

  df_echo "install the packages (only in ubuntu-desktop.sh)"
  . $DF_OS_PATH/10/git_ssh.sh
  . $DF_OS_PATH/10/atom.sh
  . $DF_OS_PATH/10/chromium.sh
  . $DF_OS_PATH/10/tex.sh
  . $DF_OS_PATH/10/activator.sh
  . $DF_OS_PATH/10/jetbrains-idea.sh
  . $DF_OS_PATH/10/jetbrains-web.sh

  df_echo "unset and clear"
  . $DF_OS_PATH/99_unset.sh
  unset DF_OS_PATH
}
