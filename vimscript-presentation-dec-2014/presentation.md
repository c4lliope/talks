# Vimscript

Presented by Grayson Wright

https://github.com/graysonwright
@grayson_wright


## Resources

[Learn Vimscript the Hard Way](http://learnvimscriptthehardway.stevelosh.com)
by Steve Losh

Simply the best resource for learning VimScript. Check it out.


## Basics

echo "hello"
echom "hello"
echo 2 + 2


## Development

- Need a quick way to write and run scripts

1. open a script.vim file
2. set up a mapping to source the file


## types and coercion

echo "hello" + "world"
echo 4 + "world"
echo 4 + "1world"
echo "10foo" + "10bar"
echo "foo10" + "10bar"

echo "hello " . "world"


## conditions

if 0
  echo "true"
else
  echo "false"
endif

- if "hello"
- if "10hello"


## Variables

Local:

let foo = 4
let bar = "2bar"
echo foo + bar
echo foo . bar

Global:

let g:foo = 4
echo g:foo
let g:foo = "bar"
echo g:foo

Options:

set paste
set nopaste
set paste?
let &paste = 4


## Functions

function foo()
  echo "Hello"
endfunction

call foo()


## escaping

(execute normal)

normal ggdd

nnoremap D dd
normal ggwD

normal! ggD
normal /foo<cr>

execute "normal! gg/foo\<cr>dd"
execute "normal! mqA;\<esc>`q"
