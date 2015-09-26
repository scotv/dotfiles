# .files in Lubuntu

This is a management collection of dotfiles in Lubuntu.

All of files in `~/dotfiles` have no dot notation.

这个项目托管了Lubuntu下面的很多配置文件，
通常这些配置文件（夹）都以点号`.`作为前缀。

在项目中，所有的文件都去掉点号，我们通过文件链接的方式（参考`init.sh`）做关联。

## Before vimrc
Install `pathogen.vim` before using vimrc.

And here is list of bundles managed by `pathogen.vim`:
* vim-easymotion

## Initialize the environment of dotfiles

    git clone
    cd ~/dotfiles
    chmod +x init.sh
    ./init.sh

## List
The dotfiles contain:

目前托管了如下的配置文件：

File or folder 文件（夹） | Description 简介
:-----------------------------------------|:--------------------------
bashrc | Bash configuration 天天用，必备设置 
gitconfig | Git global setting 配置了一些常用Git命令
vimrc | 
*vim/* | 
 *atom/* | 

## References
* [Using Git and Github to Manage Your Dotfiles](http://blog.smalleycreative.com/tutorials/using-git-and-github-to-manage-your-dotfiles/) by _Michael Smalley_
* [Text Editor for Scala](http://stackoverflow.com/questions/3626203/text-editor-for-scala) on Stackoverflow.com
* [Enclose word in tag](http://stackoverflow.com/a/10306845) on Stackoverflow.com
* [Altering SBT Repository](http://freewind.me/blog/20140509/2619.html) by _freewind_
* [Show Current Git Branch in PS1](https://coderwall.com/p/fz0e0g) by _Robert Hennig_
* [Special Characters in Bash](http://www.tldp.org/LDP/abs/html/special-chars.html) on tldp.org
* [Show Current Git Status in PS1](http://www.bramschoenmakers.nl/en/node/624) on bramschoenmakers.nl
* [Replace `gitk` with `git k`](https://github.com/xujihui1985/dotfiles/commit/75a1c5ed272db525e9b504a6a4826b3f1fcf5e7a#diff-4723a3b40361325f6612c40749b696d9) from xujihui1985/dotfiles
