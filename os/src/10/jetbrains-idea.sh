df_exist "idea" || {
  df_echo "Download ideaIU and unpack to ~/opt/idea, make sure you have valid license"
  df_apt_download https://download.jetbrains.com/idea/ideaIU-2016.1.3.tar.gz c97806fe837e3f7e2c78b517ee8a966b77213c67
  df_exec_cmd "tar -zxf ~/Downloads/ideaIU-2016.1.3.tar.gz -C ~/opt/"
  df_exec_cmd "mv ~/opt/idea-IU-145.1617.8/ ~/opt/idea"
  df_exec_cmd "cd ~/opt/idea/bin"
  # df_exec_cmd "./idea.sh"
  df_exec_cmd "cd ~"
}
