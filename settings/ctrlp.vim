"https://raw.github.com/carlhuda/janus/44dd1573c2270de1f18e265637b537406289f751/janus/vim/tools/janus/after/plugin/ctrlp.vim
"let g:ctrlp_map = ''
let g:ctrlp_custom_ignore = {
\ 'dir':  '\.git$\|\.hg$\|\.svn$',
\ 'file': '\.pyc$\|\.pyo$\|\.rbc$|\.rbo$\|\.class$\|\.o$\|\~$\',
\ }

if has("gui_macvim") && has("gui_running")
  "call janus#add_mapping('ctrlp', 'map', '<D-t>', ':CtrlP<CR>')
  "call janus#add_mapping('ctrlp', 'imap', '<D-t>', '<ESC>:CtrlP<CR>')
endif
