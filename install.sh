#!/bin/bash
#Author: Tyler Lee
#Date: 2017-09-30

# prerequisition
echo
echo Please install Vim, tmux, and SSH first
echo
exit

# configure Git
ln -s "$(PWD)/git/gitconfig" ~/.gitconfig
ln -s "$(PWD)/git/gitignore" ~/.gitignore

# configure Shell
ln -s "$(PWD)/shell/bashrc" ~/.bashrc
ln -s "$(PWD)/shell/tmux.conf" ~/.tmux.conf
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

# configure Vim
git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
ln -s "$(PWD)/vim/vimrc" ~/.vim/vimrc
ln -s "$(PWD)/vim/ycm_extra_conf.py" ~/.ycm_extra_conf.py
vim +PluginInstall +qall
pushd ~/.vim/bundle/YouCompleteMe/
echo
echo Begin to compile YouCompleteMe.
echo If packages or submodules are missing, please install them first. Refer to https://github.com/Valloric/YouCompleteMe.
./install.py --clang-completer
echo 
echo For each project, please copy YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py to project_dir/.ycm_extra_conf.py
popd

# TODO: configure SSH

