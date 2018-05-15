
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
  brew
}

df_apt_install() {
  # http://stackoverflow.com/a/3816747
  pkg_list="$@"
  df_echo "Will install in quiet: $pkg_list"

  df_apt_exec reinstall $pkg_list
}

df_apt_ppa() {
  df_exec_cmd "sudo add-apt-repository -y ppa:$1/$2"
}

df_apt_download() {
  local df_download_url="$1"
  local df_download_name="${df_download_url##*/}"
  local df_download_path="$HOME/Downloads/$df_download_name"
  echo $df_download_path
  if [[ -f $df_download_path && `sha1sum $df_download_path | awk '{print $1}'`=="$2" ]]; then
    df_echo "$df_download_name has been downloaded"
  else
    df_exec_cmd "wget -nc -P ~/Downloads/ $1"
  fi
}

df_apt_update() {
  df_apt_exec update
}

df_apt_upgrade() {
  df_apt_update
  df_apt_exec upgrade
}

def_apt_init() {
  df_echo "install brew and enable the caskroom"
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
  brew tap caskroom/cask
}

def_apt_init
