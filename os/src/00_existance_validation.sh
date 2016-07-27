df_echo "Define the existance validation function"

df_exist_command() {
  command -v "$1" > /dev/null 2>&1
}

df_exist_never() {
  df_exist_command df_DUMMY_NERVER_EXISTS
}

df_exist_always(){
  df_exist_command ls
}

df_exist_folder() {
  [ -d "$1" ]
}

df_exist() {
  if   [ "$1" == "atom" ]; then
    df_exist_command apm
  elif [ "$1" == "git" ]; then
    df_exist_command git
  elif [[ "$1" == "node" || "$1" == "nodejs" || "$1" == "nvm" ]]; then
    df_exist_command nvm && df_exist_command node
  elif [[ "$1" == "tex" || "$1" == "latex" ]]; then
    df_exist_command tex && df_exist_command latex
  elif [ "$1" == "activator" ]; then
    df_exist_folder "$HOME/opt/activator-dist-1.3.6"
  elif [ "$1" == "idea" ]; then
    df_exist_folder "$HOME/opt/idea"
  elif [ "$1" == "webs" ]; then
    df_exist_folder "$HOME/opt/webs"
  else
    df_exist_never
  fi
}


# References
# http://tldp.org/LDP/Bash-Beginners-Guide/html/sect_07_02.html
# http://stackoverflow.com/a/4785518
# http://stackoverflow.com/questions/2237080/how-to-compare-strings-in-bash-script
# http://stackoverflow.com/a/59839
