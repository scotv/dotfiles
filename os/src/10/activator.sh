df_exist "activator" || {
  df_echo "Install Activator 1.3.6 for Play !"
  df_apt_download https://downloads.typesafe.com/typesafe-activator/1.3.6/typesafe-activator-1.3.6.zip 91bb84365e569477fba72b2b1e298987d1bc4a08
  df_exec_cmd "unzip -oq ~/Downloads/typesafe-activator-1.3.6.zip  -d ~/opt/"
}
