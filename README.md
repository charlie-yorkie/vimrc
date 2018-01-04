# Vimrc #Charlie

Install necessary packages:
----
	$ sudo apt-get install vim vim-gtk cmake git cscope exuberant-ctags

with the usage of ctags and cscope:

	$ ctags -R *
	$ cscope -Rbkq

Retrieve the latest vimrc file from github:
----
	$ wget -O - https://raw.githubusercontent.com/charlie-yorkie/vimrc/master/_vimrc > $HOME/.vimrc

Set up plugin manager(**_[Vundle](https://github.com/VundleVim/Vundle.vim)_** or **_[vim-plug](https://github.com/junegunn/vim-plug)_**):
----
### Install Vundle
	$ git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
### Install plugins in vimrc:
	$ vim +PluginInstall +qall
----
### Install vim-plug
	$ curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
### Install plugins in vimrc:
	$ vim +PlugInstall +qall
> Note

> [vim] vim-plug is known to work with Vim 7.0 or above, however 8.0 is recommended for parallel installer without dependencies.

> [git] Most of the features should work with Git 1.7 or above. However, installing plugins with tags is known to fail if Git is older than 1.7.10. Git 1.8 or greater is recommended.
----

Plugins
-------
* [Vundle](https://github.com/VundleVim/Vundle.vim): Vundle is short for Vim bundle and is a Vim plugin manager.
* [NERDTree](https://github.com/scrooloose/nerdtree): The NERDTree is a file system explorer for the Vim editor.
* [TagBar](https://github.com/majutsushi/tagbar): Tagbar is a Vim plugin that provides an easy way to browse the tags of the current file and get an overview of its structure.
* [ctrlp](https://github.com/ctrlpvim/ctrlp.vim): Full path fuzzy file, buffer, mru, tag, ... finder for Vim.
* [cscope_maps](https://github.com/chazy/cscope_maps): It magically assigns awesome cscope maps to your vim sessions turning your
VIM session into a superior IDE.
* [NERD Commenter](https://github.com/scrooloose/nerdcommenter): Comment functions so powerful—no comment necessary.
* [Auto Pairs](https://github.com/jiangmiao/auto-pairs): Insert or delete brackets, parens, quotes in pair.
* [vim-surround](https://github.com/tpope/vim-surround): Surround.vim is all about "surroundings": parentheses, brackets, quotes, XML tags, and more.
* [vim-session](https://github.com/xolox/vim-session): Extended session management for Vim.
* [vim-airline](https://github.com/vim-airline/vim-airline): Lean & mean status/tabline for vim that's light as air.

Reference
----
* [VimAwesome](https://vimawesome.com/)
* [Vundle Examples](https://github.com/VundleVim/Vundle.vim/wiki/Examples)
* [vim-plug FAQ](https://github.com/junegunn/vim-plug/wiki/faq)
* [How To Vimrc](https://dougblack.io/words/a-good-vimrc.html)
* [Learning Vim in 2014: Getting More from Vim with Plugins](https://benmccormick.org/2014/07/21/learning-vim-in-2014-getting-more-from-vim-with-plugins/)
* [Turning vim into an IDE through vim plugins](https://www.safaribooksonline.com/blog/2014/11/23/way-vim-ide/)
* [Vim 簡介](https://help.cs.nctu.edu.tw/help/index.php/HOWTO_-_vi,_vim)
* [vim 常用功能](http://www.cjwind.idv.tw/vim/)
* [vimrc 設定教學](http://wiki.csie.ncku.edu.tw/vim/vimrc)
* [Vimrc #vgod](https://github.com/vgod/vimrc)
* [Vimrc #chusiang](https://github.com/chusiang/vimrc)
* [如何用Vim搭建IDE？](http://harttle.com/2015/11/04/vim-ide.html)
* [How do I copy from vim to clipboard](https://forum.kde.org/viewtopic.php?f=22&t=93779)
