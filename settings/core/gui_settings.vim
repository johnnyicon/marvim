"https://raw.github.com/carlhuda/janus/master/janus/vim/core/before/plugin/gui_settings.vim
"https://github.com/jigfox/vimfiles/blob/master/gvimrc

if has("gui_running")
  if has("autocmd")
    " Automatically resize splits when resizing MacVim window
    autocmd VimResized * wincmd =
  endif

  "set guifont=Consolas:h13
  set guifont=Courier_New:h13

  " hide right-hand scrollbar
  set guioptions-=r
  set guioptions-=R

  " hide left-hand scrollbar
  "set guioptions-=l
  "set guioptions-=L

  " hide toolbar
  set guioptions-=T

  " use console instead of pop up dialog
  "set guioptions+=c

  " don't use gui tab appearance
  "set guioptions-=e

  set antialias

endif
