function! VimCompleteLikeAModernEditor#pairClampIntegration()
  if pumvisible()
    return neocomplete#close_popup() . neocomplete#cancel_popup()
  else
    return 0
  endif
endfunction
