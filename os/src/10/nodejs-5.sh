df_exist_command node || {
  df_node_version="v5.11.1"
  df_echo "Install Nodejs $df_node_version via nvm"
  df_echo "DO NOT install Nodejs via apt-get"
  # df_exec_cmd "curl -sL https://deb.nodesource.com/setup_5.x | sudo -E bash -"
  # df_apt_install nodejs
  df_apt_exec "purge nodejs"
  df_apt_exec "autoremove"
  df_apt_exec "autoclean"
  curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.31.1/install.sh | bash
  # df_exec_cmd "source ~/.bashrc"
  df_echo "source nvm.sh"
  source ~/.nvm/nvm.sh
  df_echo "nvm install $df_node_version"
  nvm install $df_node_version
  # NVM_NODEJS_ORG_MIRROR=https://cnpmjs.org/dist nvm install $df_node_version
  df_echo "source .bashrc"
  source ~/.bashrc
  df_echo "will install --global nrm grunt-cli gitbook-cli npm-check-updates"
  sudo ~/.nvm/versions/node/$df_node_version/bin/npm i -g nrm grunt-cli gitbook-cli npm-check-updates nrm
}
