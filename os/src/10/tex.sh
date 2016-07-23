df_echo "Install Tex"
df_apt_install texlive-full
df_exec_cmd "sudo mkdir -p /usr/share/texmf/tex/latex/multind"
df_exec_cmd "sudo wget -nc -P /usr/share/texmf/tex/latex/multind/ http://ctan.org/tex-archive/macros/latex209/contrib/misc/multind.sty"
df_exec_cmd "sudo texhash"
df_exec_cmd "sudo fc-cache -f -v"
