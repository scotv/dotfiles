df_exist_report() {
  if df_exist_command $1; then
    echo "--------o-------- $1"
    df_exist_always
  else
    echo "XXXXXXXXXXXXXXXXX $1"
    df_exist_never
  fi
}

df_echo "Installation Report (o for installed, X for not)"
lsb_release -d
df_exist_report 7z
df_exist_report unzip
df_exist_report activator || ls $HOME/opt -hl | grep activator
df_exist_report atom && atom --version
df_exist_report chromium-browser && chromium-browser --version
df_exist_report git && git --version
df_exist_report scala && java -version && scala -version
df_exist_report mongo && mongo --version
df_exist_report node && node --version
df_exist_report ruby && ruby --version
df_exist_report tex && xelatex --version | grep 3.14
df_exist_report vim && vim --version | grep IMproved
df_exist_report wget && wget --version | grep GNU
df_exist_report curl && curl --version | grep curl

unset df_exist_report
