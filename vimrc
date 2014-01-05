set nocompatible

" http://stackoverflow.com/questions/821902/disabling-swap-files-creation-in-vim
set nobackup
set noswapfile

runtime bundle/vim-pathogen/autoload/pathogen.vim
execute pathogen#infect()

set runtimepath+=~/.vim/settings/core
set runtimepath+=~/.vim/settings

"runtime settings/core/janus.vim

runtime settings/core/plugins.vim
runtime settings/core/filetypes.vim
runtime settings/core/gui_settings.vim
runtime settings/core/mappings.vim
runtime settings/core/settings.vim
runtime settings/core/statusline.vim

runtime settings/ack.vim
runtime settings/ctrlp.vim
runtime settings/nerdtree.vim
runtime settings/basic.vim
runtime settings/vim-indent-guides.vim
runtime settings/NERD_commenter.vim

runtime settings/colors.vim
