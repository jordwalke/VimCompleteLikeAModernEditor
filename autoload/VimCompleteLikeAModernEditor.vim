function! VimCompleteLikeAModernEditor#pairClampIntegration()
  if pumvisible()
    return "\<CR>"
    " return neocomplete#close_popup() . neocomplete#cancel_popup()
  else
    return 0
  endif
endfunction
