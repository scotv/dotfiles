df_exist_command ruby || {
  df_echo "Install Ruby"
  df_apt_install rbenv
  rbenv init
  # RUBY_CONFIGURE_OPTS=--with-openssl-dir=/usr/local/Cellar/openssl/1.0.2l/ \
     rbenv install 2.4.0
  rbenv rehash
  rbenv global 2.4.0
  . ~/.bashrc
  ruby -v
  gem update
}
