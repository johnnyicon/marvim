runtime bundle/vim-pathogen/autoload/pathogen.vim
execute pathogen#infect()

set runtimepath+=~/.vim/settings/core
set runtimepath+=~/.vim/settings

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

runtime settings/colors.vim
