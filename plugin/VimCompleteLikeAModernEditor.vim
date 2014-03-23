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
" If pairtools is installed, this following mapping will be clobbered (which is
" fine because the above CR hook will perfrom its own special handling), but if
" it's not installed, it will work.
function! s:manualCRHandler()
  return pumvisible() ? neocomplete#close_popup() . neocomplete#cancel_popup() : "\<CR>"
endfunction
inoremap <silent> <CR> <C-r>=<SID>manualCRHandler()<CR>

let did_VimCompleteLikeAModernEditor_plugin=1


" vim: ts=8 sts=4 sw=4
