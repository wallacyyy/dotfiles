dotfiles
========

Install neovim:
[https://github.com/neovim/neovim/wiki/Installing](https://github.com/neovim/neovim/wiki/Installing)

Install tmux:
[https://github.com/ThomasAdam/tmux/blob/master/README](https://github.com/ThomasAdam/tmux/blob/master/README)

```
$ git clone https://github.com/gmarik/Vundle.vim.git ~/.nvim/bundle/Vundle.vim
$ cd ~
$ git init
$ git remote add origin git@github.com:wallacyyy/dotfiles.git
$ git pull origin master
$ git clone https://github.com/gmarik/Vundle.vim.git ~/.nvim/bundle/Vundle.vim
$ brew install reattach-to-user-namespace

:PluginInstall
```
