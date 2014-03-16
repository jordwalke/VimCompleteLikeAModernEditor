" General Idea But Modified From: https://github.com/JazzCore/neocomplcache-ultisnips



" Test case: Create a file with the following:
"
"   test
"   testAnother
"
"
" Then type `tes`, and hit `<CR>` to select `test`. The highlighted result
" should be selected and the popup should close and *not* reopen immediately
" until you begin typing the letter `A`!
"
"
" Also, when in an `UltiSnips` placeholder, if typing the words `some`, the
" popup will open. But what should `<Tab>` do? Should it complete or jump to the
" next snippet placeholder? By default we jump to the next placeholder, but you
" can make it so that <Tab> will select the result by setting:
"
"     let g:AutoCompleteLikeAModernEditor_Complete_Higher_Priority_Than_Jump=1
"
" This is not recommended, because there is *no* way to jump to the next item.
"
function! g:UltiSnips_Complete()
  call UltiSnips#ExpandSnippet()
  if g:ulti_expand_res == 0
    if !exists('g:AutoCompleteLikeAModernEditor_Complete_Higher_Priority_Than_Jump') || g:AutoCompleteLikeAModernEditor_Complete_Higher_Priority_Than_Jump==0
      call UltiSnips#JumpForwards()
      if g:ulti_jump_forwards_res == 0
        if pumvisible()
          return neocomplete#close_popup() . neocomplete#cancel_popup()
        else
          return "\<TAB>"
        endif
      endif
    else
      if pumvisible()
        return neocomplete#close_popup() . neocomplete#cancel_popup()
      else
        call UltiSnips#JumpForwards()
        if g:ulti_jump_forwards_res == 0
          return "\<TAB>"
        endif
      endif
    endif
  endif
  return ""
endfunction

exec "inoremap <silent> " . g:UltiSnipsExpandTrigger . " <C-R>=g:UltiSnips_Complete()<cr>"
exec "snoremap <silent> " . g:UltiSnipsExpandTrigger . " <Esc>:call UltiSnips#ExpandSnippetOrJump()<cr>"

inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
function! s:my_cr_function()
  return pumvisible() ? neocomplete#close_popup() . neocomplete#cancel_popup() : "\<CR>" 
endfunction
