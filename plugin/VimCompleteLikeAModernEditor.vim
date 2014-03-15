" File: VimCompleteLikeAModernEditor.vim
" Author: jordwalke
" Description: Make Vim complete like a modern editor - with ultisnips and
" neocomplete
"
if exists('did_VimCompleteLikeAModernEditor_plugin') || &cp || version < 700
    finish
endif


let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"
let g:UltiSnipsSnippetsDir="~/.vim"
let g:UltiSnipsSnippetDirectories=["myUltiSnippets"]
" If want to use stock snippets let g:UltiSnipsSnippetDirectories=["myUltiSnips", "UltiSnips"]
set noshowmatch " unfortunately messes up if showing match while tab triggering

let g:neocomplete#enable_at_startup = 1
let g:neocomplete#enable_auto_select = 1
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
" inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
" function! s:my_cr_function()
"   return neocomplcache#smart_close_popup() . "\<CR>"
"   " For no inserting <CR> key.
"   " return pumvisible() ? neocomplcache#close_popup() : "\<CR>"
" endfunction

let did_VimCompleteLikeAModernEditor_plugin=1

" vim: ts=8 sts=4 sw=4
