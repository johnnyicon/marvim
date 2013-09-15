"https://raw.github.com/carlhuda/janus/44dd1573c2270de1f18e265637b537406289f751/janus/vim/tools/janus/after/plugin/ctrlp.vim
"let g:ctrlp_map = ''
let g:ctrlp_custom_ignore = {
\ 'dir':  '\.git$\|\.hg$\|\.svn$|tmp$',
\ 'file': '\.pyc$\|\.pyo$\|\.rbc$|\.rbo$\|\.class$\|\.o$\|\~$\',
\ }

if has("gui_macvim") && has("gui_running")
  "map <D-t> :CtrlP<CR>
  map <C-p> :CtrlP<CR><F5>
  "call janus#add_mapping('ctrlp', 'map', '<D-t>', ':CtrlP<CR>')
  "imap <D-t> <ESC>:CtrlP<CR>
  imap <C-p> <ESC>:CtrlP<CR><F5>
  "call janus#add_mapping('ctrlp', 'imap', '<D-t>', '<ESC>:CtrlP<CR>')
endif
