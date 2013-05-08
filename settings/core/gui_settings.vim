"https://raw.github.com/carlhuda/janus/master/janus/vim/core/before/plugin/gui_settings.vim

if has("gui_running")
  if has("autocmd")
    " Automatically resize splits when resizing MacVim window
    autocmd VimResized * wincmd =
  endif
endif
