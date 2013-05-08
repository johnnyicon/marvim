"https://raw.github.com/carlhuda/janus/master/janus/vim/core/before/plugin/gui_settings.vim

if has("gui_running")
  if has("autocmd")
    " Automatically resize splits when resizing MacVim window
    autocmd VimResized * wincmd =
  endif

  " hide right-hand scrollbar
  set guioptions-=r
  set guioptions-=R

  " hide left-hand scrollbar
  set guioptions-=l
  set guioptions-=L

  " hide toolbar
  set guioptions-=T
endif
