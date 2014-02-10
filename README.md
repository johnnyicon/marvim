marvim
======

Marvim - My VIM Buddy

Installation
======

1. RECURSIVE CLONE

  Make sure to perform a recursive clone to pick up all the submodules that are linked in this project.

        git clone --recursive 

  Otherwise, if you've already clone the project without using the `--recursive` flag, run the following two commands from within the marvim director.

        git submodule init 
        git submodule update

2. SYMLINK VIM DOTFILES

  Symlink `marvim/vimrc` and `marvim/gvimrc` into your home directory as `.vimrc` and `.gvimrc` respectively. 

        ln -s /path/to/marvim/vimrc ~/.vimrc
        ln -s /path/to/marvim/gvimrc ~/.gvimrc

3. SYMLINK VIM FOLDER

        ln -s /path/to/marvim ~/.vim

  You may need to remove ~/.vim if it already exists
  
3. Install Silver Searcher as Ack Replacement

        brew install the_silver_searcher
