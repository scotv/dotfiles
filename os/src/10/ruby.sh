df_echo "Install Ruby"
# alternative way https://gorails.com/setup/ubuntu/15.04
df_apt_install ruby-dev libxml2-dev libxslt-dev
df_exec_cmd "sudo gem update"
df_exec_cmd_nobail "sudo gem update --system"
df_exec_cmd "sudo gem install bundler"
# bundle config mirror.https://rubygems.org https://ruby.taobao.org
