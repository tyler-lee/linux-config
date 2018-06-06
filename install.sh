#!/bin/bash
#Author: Tyler Lee
#Date: 2017-09-30

# prerequisition
echo
echo Install Git, Vim, tmux, SSH, and some dependencies.
echo
Name=$(lsb_release -is)
if [[ "Ubuntu" == "${Name}" ]]; then
	sudo apt install git vim tmux build-essential cmake python-dev python3-dev clang
elif [[ "CentOS" == "${Name}" ]]; then
	sudo yum install git vim tmux
elif [[ "Federa" == "${Name}" ]]; then
	sudo dnf install git vim tmux automake gcc gcc-c++ kernel-devel cmake python-devel python3-devel clang
else
	echo "Install git vim tmux"
fi
#exit

# configure Git
echo "Config Git (Git is required.)"
ln -s "${PWD}/git/gitconfig" ~/.gitconfig
ln -s "${PWD}/git/gitignore" ~/.gitignore

# configure Shell
echo "Config Shell (tmux is required.)"
mv ~/.bashrc ~/.bashrc_old
ln -s "${PWD}/shell/bashrc" ~/.bashrc
ln -s "${PWD}/shell/tmux.conf" ~/.tmux.conf
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

# configure Vim
echo "Config Vim (Vim is required.)"
git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
ln -s "${PWD}/vim/vimrc" ~/.vim/vimrc
vim +PluginInstall +qall
#ln -s "${PWD}/vim/ycm_extra_conf.py" ~/.ycm_extra_conf.py
#pushd ~/.vim/bundle/YouCompleteMe/
#echo
#echo Begin to compile YouCompleteMe.
#echo If packages or submodules are missing, please install them first. Refer to https://github.com/Valloric/YouCompleteMe.
#git submodule update --init --recursive
#./install.py --clang-completer
#echo
#echo For each project, please copy YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py to project_dir/.ycm_extra_conf.py
#popd

# TODO: configure SSH

