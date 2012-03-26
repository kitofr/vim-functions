"=============================================================================
" File: data-functions.vim
" Author: Kristoffer Roupé <kitofr@gmail.com>
" script type: plugin

if &cp || (exists('g:loaded_data_functions') && g:loaded_data_functions)
  finish
endif
let g:loaded_data_functions = 1

function! s:FormatXmlFunction()
  silent! set ft=xml
  silent! %s/\/>/\/>\r/g
  silent! %s/?>/?>\r/g
  silent! %s/\/\(\w\+\)>/\/\1>\r/g
  silent! %s/\/\(\w\+\-\w\+\)>/\/\1>\r/g
  silent! %s/></>\r</g
  silent! normal! gg
endfunction

command! FormatXml call <SID>FormatXmlFunction()

function! s:FormatJsonFunction()
  set ft=javascript
  silent! %s/,\"/,\r\"/g
  silent! normal! gg
end

command! FormatJson call <SID>FormatJsonFunction()
