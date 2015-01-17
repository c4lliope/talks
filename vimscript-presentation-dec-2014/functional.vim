function! Sorted(list)
  let new_list = deepcopy(a:list)
  call sort(new_list)
  return new_list
endfunction

function! Reversed(list)
  let new_list = deepcopy(a:list)
  call reverse(new_list)
  return new_list
endfunction

function! Append(list, element)
  let new_list = deepcopy(a:list)
  call add(new_list, a:element)
  return new_list
endfunction

function! Assoc(list, index, val)
  let new_list = deepcopy(a:list)
  call new_list[a:index] = a:val
  return new_list
endfunction

function! Pop(list, index)
  let new_list = deepcopy(a:list)
  call remove(new_list, a:index)
  return new_list
endfunction

function! Mapped(func, list)
  let new_list = deepcopy(a:list)
  call map(new_list, string(a:func) . '(v:val)')
  return new_list
endfunction

function! Filtered(func, list)
  let new_list = deepcopy(a:list)
  call filter(new_list, string(a:func) . '(v:val)')
  return new_list
endfunction

function! Removed(func, list)
  let new_list = deepcopy(a:list)
  call filter(new_list, '!' . string(a:func) . '(v:val)')
  return new_list
endfunction

echo expand('%')
echo expand('%:p')
echo expand('%:~:h')
echo fnamemodify('foo.txt', ':p')
