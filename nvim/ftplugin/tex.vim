" Enable vim tex mappings
let maplocalleader=","
" Manually redefine only the mappings you wish to use
" --------------------------------------------- "
" Some text objects
omap ac <Plug>(vimtex-ac)
omap id <Plug>(vimtex-id)
omap ae <Plug>(vimtex-ae)
xmap ac <Plug>(vimtex-ac)
xmap id <Plug>(vimtex-id)
xmap ae <Plug>(vimtex-ae)

" Some motions
map %  <Plug>(vimtex-%)
map ]] <Plug>(vimtex-]])
map [[ <Plug>(vimtex-[[)

" A few commands
nmap <localleader>li <Plug>(vimtex-info)
nmap <localleader>ll <Plug>(vimtex-compile)
nmap dsm <Plug>(vimtex-env-delete-math)

" Example: adding `\big` to VimTeX's delimiter toggle list
let g:vimtex_delim_toggle_mod_list = [
  \ ['\left', '\right'],
  \ ['\big', '\big'],
\]

" single-shot compilation
noremap <localleader>c <Cmd>update<CR><Cmd>VimtexCompileSS<CR>

noremap <localleader>cl <Cmd>VimtexClean<CR>
noremap <localleader>cs <Cmd>VimtexCompile<CR>
noremap <localleader>ss <Cmd>VimtexStop<CR>


" Don't open QuickFix for warning messages if no errors are present
let g:vimtex_quickfix_open_on_warning = 0  

" Filter out some compilation warning messages from QuickFix display
let g:vimtex_quickfix_ignore_filters = [
      \ 'Underfull \\hbox',
      \ 'Overfull \\hbox',
      \ 'LaTeX Warning: .\+ float specifier changed to',
      \ 'LaTeX hooks Warning',
      \ 'Package siunitx Warning: Detected the "physics" package:',
      \ 'Package hyperref Warning: Token not allowed in a PDF string',
      \]

let g:vimtex_view_method = 'zathura'
nmap <localleader>v <plug>(vimtex-view)

" Get Vim's window ID for switching focus from Zathura to Vim using xdotool.
" Only set this variable once for the current Vim instance.
if !exists("g:vim_window_id")
  let g:vim_window_id = system("xdotool getactivewindow")
endif

function! s:TexFocusVim() abort
  " Give window manager time to recognize focus moved to Zathura;
  " tweak the 200m as needed for your hardware and window manager.
  sleep 200m  

  " Refocus Vim and redraw the screen
  silent execute "!xdotool windowfocus " . expand(g:vim_window_id)
  redraw!
endfunction
