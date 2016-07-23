
df_os_local() {
  df_echo "Setting Local"
  df_apt_install language-pack-en-base
  df_apt_install language-pack-zh-hans language-pack-zh-hans-base
  df_apt_install language-pack-zh-hant language-pack-zh-hant-base
  sudo dpkg-reconfigure -u locales

  df_echo "Setting Timezone"
  df_exec_cmd "sudo timedatectl set-timezone Asia/Shanghai"
}
df_os_local
df_exec_cmd "unset df_os_local"
