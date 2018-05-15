df_echo "Install jdk-8 and Scala"
brew cask install caskroom/versions/java8 scala
df_apt_install --force-bottle gcc
df_apt_install sbt@1 ammonite-repl
