#!/usr/bin/env bash

# wget -qO- https://raw.githubusercontent.com/scozv/dotfiles/master/os/ubuntu-desktop.sh | bash

{
  df_echo() {
    echo
    echo "### $1"
    echo
  }

  df_run_script() {
    . ~/opt/.df/dotfiles-master/os/src/$1
  }

  df_echo "download the environment scripts"
  mkdir -p ~/opt/.df
  wget -O ~/opt/.df/dotfiles.tar.gz https://github.com/scozv/dotfiles/archive/master.tar.gz
  tar -xf ~/opt/.df/dotfiles.tar.gz -C ~/opt/.df/

  DF_OS_PATH="~/opt/.df/dotfiles-master/os/src"

  df_echo "define temporary functions"
  df_run_script 00_define_functions.sh
  df_run_script 00_existance_validation.sh

  df_echo "apt sources"
  df_run_script 03_apt_sources.sh
  df_echo "system configure"
  df_run_script 05_system_config.sh

  df_echo "install the packages (same as ubuntu-server.sh)"
  df_run_script 10/wget_curl.sh
  df_run_script 10/7z_unzip.sh
  df_run_script 10/jdk_scala.sh
  df_run_script 10/mongo-3.sh
  df_run_script 10/nodejs-5.sh
  df_run_script 10/ruby.sh
  df_run_script 10/vim.sh

  df_echo "install the packages (only in ubuntu-desktop.sh)"
  df_run_script 10/git_ssh.sh
  df_run_script 10/atom.sh
  df_run_script 10/chromium.sh
  df_run_script 10/tex.sh
  df_run_script 10/activator.sh
  df_run_script 10/jetbrains-idea.sh
  df_run_script 10/jetbrains-web.sh

  df_echo "unset and clear"
  df_run_script 99_existance_report.sh
  df_run_script 99_unset.sh
  unset df_echo
  unset df_run_script
}
