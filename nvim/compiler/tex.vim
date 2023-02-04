" This code would go in compiler/tex.vim
setlocal makeprg=latexmk\ -pdf\ -output-directory=%:h\ %
" First create a script-local variable `s:latexmk` to store the latexmk command
let s:latexmk = 'latexmk -pdf -output-directory=%:h %'

" Then set `makeprg` to the value of `s:latexmk`
let &l:makeprg = expand(s:latexmk)

" Compiler engine
let g:vimtex_compiler_engine = 'lualatex'

" Error Format

" Match file name
setlocal errorformat=%-P**%f
setlocal errorformat+=%-P**\"%f\"

" Match LaTeX errors
setlocal errorformat+=%E!\ LaTeX\ %trror:\ %m
setlocal errorformat+=%E%f:%l:\ %m
setlocal errorformat+=%E!\ %m

" More info for undefined control sequences
setlocal errorformat+=%Z<argument>\ %m

" More info for some errors
setlocal errorformat+=%Cl.%l\ %m

" Catch-all to ignore unmatched lines
setlocal errorformat+=%-G%.%#
