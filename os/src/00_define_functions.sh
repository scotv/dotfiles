
df_echo() {
    echo
    echo "### $1"
    echo
}

df_bail() {
    df_echo 'Error executing command, exiting'
    exit 1
}

df_exec_cmd_nobail() {
    df_echo "+ $1"
    bash -c "$1"
}

df_exec_cmd() {
    df_exec_cmd_nobail "$1" || df_bail
}

df_apt_exec() {
  # http://ask.xmodulo.com/find-ubuntu-version-codename-shell-script.html
  # sudo apt[-get] -y $1

  if [[ `lsb_release --release | cut -f2` > "15.10" ]]; then
    echo "`lsb_release --release | cut -f2` apt $1"
    sudo apt -y $1
  else
    sudo apt-get -y $1
  fi
}

df_apt_install() {
  # http://stackoverflow.com/a/3816747
  pkg_list="$@"
  df_echo "Will install in quiet: $pkg_list"

  df_apt_exec "install $pkg_list"
}

df_apt_ppa() {
  df_exec_cmd "sudo add-apt-repository -y ppa:$1/$2"
}

df_apt_download() {
  df_exec_cmd "wget -nc -P ~/Downloads/ $1"
}

df_apt_update() {
  df_apt_exec update
}

df_apt_upgrade() {
  df_apt_update
  df_apt_exec upgrade
}
