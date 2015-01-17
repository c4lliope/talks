function! Meow()
  echom "meow!"
endfunction

function! TextwidthIsTooWide()
  if &l:textwidth ># 80
    return 1
  endif
endfunction

function! DisplayName(name)
  echom "Hello! My name is:"
  echom a:name
endfunction

function! Varg(foo, ...)
  echom a:foo
  echom a:0
  echom a:1
  echo a:000
endfunction

function! Assign(foo)
  let foo_tmp = a:foo
  let foo_tmp = "Yep"
  echom foo_tmp
endfunction
