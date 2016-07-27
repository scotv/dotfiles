df_exist "webs" || {
  df_echo "Download WebStorm 2016.1 and unpack to ~/opt/webs, make sure you have valid license"
  df_apt_download http://download.jetbrains.com/webstorm/WebStorm-2016.1.3.tar.gz 87b72c4d78fe87556a6ae7d3b710e8470797635a
  df_exec_cmd "tar -zxf ~/Downloads/WebStorm-2016.1.3.tar.gz -C ~/opt/"
  df_exec_cmd "mv ~/opt/WebStorm-145.1616.9/ ~/opt/webs"
  df_exec_cmd "cd ~/opt/webs/bin"
  # df_exec_cmd "./webstorm.sh"
  df_exec_cmd "cd ~"
}
