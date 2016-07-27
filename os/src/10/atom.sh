df_exist "atom" || {
  df_echo "Install Atom.io"
  df_apt_install atom
  df_exec_cmd "apm install language-latex language-scala"
  df_exec_cmd "apm install tree-view-git-status react"
}
