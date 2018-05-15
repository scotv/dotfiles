df_exist_command node || {
  df_node_version="v6.9.4"
  df_apt_install nvm
  nvm install $df_node_version
  df_apt_install yarn --ignore-dependencies
}
