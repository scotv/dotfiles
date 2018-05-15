df_echo "Install Git tool"
df_apt_install git gitg git-flow bash-completion

df_echo "Generate the SSH key"
# ssh-keygen -t rsa -b 4096
# df_apt_install xclip
# xclip -sel clip < ~/.ssh/id_rsa.pub
df_echo "Put SSH key to Git server, then"
# mkdir repo
df_echo "Load the repo(s) ..."
# . ~/zepo.sh
