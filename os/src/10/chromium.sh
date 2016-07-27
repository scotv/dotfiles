df_exist_command chromium-browser || {
  df_echo "Install Chromium-browser"
  # df_apt_ppa nilarimogard webupd8
  df_apt_install chromium-browser
  df_apt_install pepperflashplugin-nonfree
}
