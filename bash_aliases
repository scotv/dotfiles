# disk usage statistics
alias df='df -h'
# http://serverfault.com/a/299905
alias du0='du -s * | sort -rn | cut -f2- | xargs -d "\n" du -sh'
# http://askubuntu.com/a/142937
alias kernel_list="dpkg -l 'linux-*' | sed '/^ii/!d;/'"$(uname -r | sed "s/\(.*\)-\([^0-9]\+\)/\1/")"'/d;s/^[^ ]* [^ ]* \([^ ]*\).*/\1/;/[0-9]/!d'"

alias kernel_autoremove="sudo apt-get purge $(dpkg -l linux-{image,headers}-"[0-9]*" | awk '/ii/{print $2}' | grep -ve "$(uname -r | sed -r 's/-[a-z]+//')")"
