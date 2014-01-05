"https://raw.github.com/carlhuda/janus/44dd1573c2270de1f18e265637b537406289f751/janus/vim/tools/janus/after/plugin/ctrlp.vim
let g:ctrlp_map = ''
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/]\.(git|hg|svn)$',
  \ 'file': '\.pyc$\|\.pyo$\|\.rbc$|\.rbo$\|\.class$\|\.o$\|\~$\',
  \ }

if has("gui_macvim") && has("gui_running")

  let g:path_to_matcher = "~/bin/matcher"
  let g:ctrlp_user_command = ['.git/', 'cd %s && git ls-files . -co --exclude-standard']
  let g:ctrlp_match_func = { 'match': 'GoodMatch' }

  function! GoodMatch(items, str, limit, mmode, ispath, crfile, regex)

    " Create a cache file if not yet exists
    let cachefile = ctrlp#utils#cachedir().'/matcher.cache'
    if !( filereadable(cachefile) && a:items == readfile(cachefile) )
      call writefile(a:items, cachefile)
    endif
    if !filereadable(cachefile)
      return []
    endif

    " a:mmode is currently ignored. In the future, we should probably do
    " something about that. the matcher behaves like "full-line".
    let cmd = g:path_to_matcher.' --limit '.a:limit.' --manifest '.cachefile.' '
    if !( exists('g:ctrlp_dotfiles') && g:ctrlp_dotfiles )
      let cmd = cmd.'--no-dotfiles '
    endif
    let cmd = cmd.a:str

    return split(system(cmd), "\n")

  endfunction

  "map <D-t> :CtrlP<CR>
  map <D-t> :CtrlP<CR><F5>
  "call janus#add_mapping('ctrlp', 'map', '<D-t>', ':CtrlP<CR>')
  "imap <D-t> <ESC>:CtrlP<CR>
  imap <D-t> <ESC>:CtrlP<CR><F5>
  "call janus#add_mapping('ctrlp', 'imap', '<D-t>', '<ESC>:CtrlP<CR>')
endif
