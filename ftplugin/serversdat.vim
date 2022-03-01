setlocal nowrap
setlocal nospell

function! SddSynStack()
  if !exists("*synstack")
    return
  endif
  let l:s = synID(line('.'), col('.'), 1)       
  echo synIDattr(l:s, 'name')
endfunc

