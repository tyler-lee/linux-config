##System: Arch Linux

##Requirements:
* Vim with python supported (for [YouCompleteMe](https://github.com/Valloric/YouCompleteMe))
* Preinstalled vim plugins (add archlinuxcn repo and use pacman)
	* [nerdtree](https://github.com/scrooloose/nerdtree)
	* [ctrlp](https://github.com/kien/ctrlp.vim)
	* [YouCompleteMe](https://github.com/Valloric/YouCompleteMe)
	* [ultisnips](https://github.com/SirVer/ultisnips)
	* [vim-surround](https://github.com/tpope/vim-surround)
	* [syntastic](https://github.com/scrooloose/syntastic)
	* [minibufexpl](https://github.com/fholgado/minibufexpl.vim)

##Quick Start
1. Set up [Vundle]:

	`git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim`

	Refer to [Vundle](https://github.com/gmarik/Vundle.vim) for details.

2. Copy Configures:

	Copy `vimrc` to `~/.vim/vimrc` or `~/.vimrc`

3. Install Plugins:

	Launch `vim` and run `:PluginInstall`

	To install from command line: `vim +PluginInstall +qall`

4. Additions:

	Channge directory to YouCompleteMe, and compile YCM accordingly.

	For C/C++ projects:
		Edit file `indexer_files` in `~/.vim/` to support project indexer.
	Or,
		Copy `ycm_extra_conf.py` or `YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py` to `project dir/.ycm_extra_conf.py`. And Don't just copy/paste that file somewhere and expect things to magically work; your project needs different flags. Hint: just replace the strings in the flags variable with compilation flags necessary for your project. That should be enough for 99% of projects.
		

	For JavaScript projects:
		Copy `tern-config` to `~/.tern-config`

	For other languages, please refer to YCM doc.

