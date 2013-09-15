"https://raw.github.com/carlhuda/janus/44dd1573c2270de1f18e265637b537406289f751/janus/vim/gvimrc
if filereadable(expand("~/.gvimrc.before"))
  source ~/.gvimrc.before
endif

" CtrlP OS-X Menu remapping
if has("gui_macvim") && has("gui_running")
  "  macmenu &File.New\ Tab key=<D-S-t>
endif

if filereadable(expand("~/.gvimrc.after"))
  source ~/.gvimrc.after
endif
