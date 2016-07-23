
df_echo "Ubuntu Desktop Environment Setup"
df_echo "Please enter your super user password: [sudo ls]"
df_exec_cmd "sudo ls"
df_echo "Import ppa and key"
df_apt_ppa saiarcot895 chromium-dev
df_apt_ppa openjdk-r ppa
df_apt_ppa webupd8team atom

df_apt_source() {
  sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 7F0CEB10
  # https://mirrors.tuna.tsinghua.edu.cn/help/mongodb/
  echo "deb http://mirror.azure.cn/mongodb/apt/debian wheezy/mongodb-org/3.0 main" | sudo tee /etc/apt/sources.list.d/mongodb-org-3.0.list
  # mongodb 3.2
  # sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv EA312927
  # echo "deb http://mirror.azure.cn/mongodb/apt/ubuntu xenial/mongodb-org/3.2 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-3.2.list

  sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
  echo "deb http://download.mono-project.com/repo/debian wheezy main" | sudo tee /etc/apt/sources.list.d/mono-xamarin.list

  wget -q -O - https://jenkins-ci.org/debian/jenkins-ci.org.key | sudo apt-key add -
  sudo sh -c 'echo deb http://pkg.jenkins-ci.org/debian binary/ > /etc/apt/sources.list.d/jenkins.list'

  if [[ `lsb_release --release | cut -f2` > "15.10" ]]; then
    wget -q https://www.virtualbox.org/download/oracle_vbox_2016.asc -O- \
      | sudo apt-key add -
  else
    wget -q https://www.virtualbox.org/download/oracle_vbox.asc -O- \
      | sudo apt-key add -
  fi
}

df_apt_source
df_exec_cmd "unset df_apt_source"

df_apt_update
