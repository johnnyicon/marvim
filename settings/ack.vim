"https://raw.github.com/carlhuda/janus/44dd1573c2270de1f18e265637b537406289f751/janus/vim/tools/janus/after/plugin/ack.vim
if has("gui_macvim") && has("gui_running")
  " Command-Shift-F on OSX
  "call janus#add_mapping('ack', 'map', '<D-F>', ':Ack<space>')
else
  " Define <C-F> to a dummy value to see if it would set <C-f> as well.
  "map <C-F> :dummy

  if maparg("<C-f>") == ":dummy"
    " <leader>f on systems where <C-f> == <C-F>
    "call janus#add_mapping('ack', 'map', '<leader>f', ':Ack<space>')
  else
    " <C-F> if we can still map <C-f> to <S-Down>
    "call janus#add_mapping('ack', 'map', '<C-F>', ':Ack<space>')
  endif

  "map <C-f> <S-Down>
endif
