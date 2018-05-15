df_exist_command tex || {
  df_echo "Install Tex"
  brew cask install mactex
  # config the mirror of ctan
  # tlmgr option repository http://mirror.ctan.org/systems/texlive/tlnet
  sudo tlmgr update --self
  tlmgr update --list
  sudo tlmgr update --all
  # http://tex.stackexchange.com/a/43059/62296
  defaults write TeXShop BringPdfFrontOnAutomaticUpdate NO
}
