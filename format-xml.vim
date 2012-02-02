function! FormatXmlFunction()
  silent! set ft=xml
  silent! %s/\/>/\/>\r/g
  silent! %s/?>/?>\r/g
  silent! %s/\/\(\w\+\)>/\/\1>\r/g
  silent! %s/\/\(\w\+\-\w\+\)>/\/\1>\r/g
  silent! normal gg
endfunction

command! FormatXml call FormatXmlFunction()
