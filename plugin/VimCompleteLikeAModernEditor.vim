" File: VimCompleteLikeAModernEditor.vim
" Author: jordwalke
" Description: Make Vim complete like a modern editor - with ultisnips and
" neocomplete
"
if exists('did_VimCompleteLikeAModernEditor_plugin') || &cp || version < 700
    finish
endif

" Put this in a file called `~/.keysVimRc` that is loaded after all of your
" plugins.
" let g:UltiSnipsExpandTrigger="<tab>"
" let g:UltiSnipsJumpForwardTrigger="<tab>"
" let g:UltiSnipsJumpBackwardTrigger="<s-tab>"
" If want to use stock snippets let g:UltiSnipsSnippetDirectories=["myUltiSnips", "UltiSnips"]
set noshowmatch " unfortunately messes up if showing match while tab triggering

let g:neocomplete#enable_at_startup = 1
let g:neocomplete#enable_auto_select = 1

function! s:ConfigurePairToolsReturnHook()
    if exists('g:pairtools_'.&ft.'_jigsaw') && g:pairtools_{&ft}_jigsaw
        call jigsaw#AddCarriageReturnHook("VimCompleteLikeAModernEditor#pairClampIntegration", "")
    endif
endfunction
autocmd FileType  * call s:ConfigurePairToolsReturnHook()
let did_VimCompleteLikeAModernEditor_plugin=1


" vim: ts=8 sts=4 sw=4
