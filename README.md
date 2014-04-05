VimCompleteLikeAModernEditor
============================

Make Vim complete like a modern editor - does the right thing. Works with `Ultisnips` and jordwalke's fork of `AutoComplPop`.

Use `VimCompleteLikeAModernEditor` to add keyboard interactions to `Ultisnips` and `jordwalke/AutoComplPop` in a way that behaves like Sublime/XCode etc.

  - Assumes you have installed `ultisnips` as well as `jordwalke/AutoComplPop` (See install instructions).
  - Lets you use either `Enter` or `Tab` to complete words or expand snippets - just like Sublime.
  - Removes all default snippets.
  - Tells the snippet system to look for your custom snippets in `~/.vim/myUltiSnippets/`

Install:

        " Prereqs:
        Bundle "git://github.com/jordwalke/AutoComplPop.git"
        Bundle "git://github.com/SirVer/ultisnips.git"
        
        " Plugin
        Bundle "jordwalke/VimCompleteLikeAModernEditor"

        " Place snippets in ~/.vim/myUltiSnippets/
        
        " Put this in your .vimrc
        " let g:UltiSnipsExpandTrigger="<tab>"
        " let g:UltiSnipsJumpForwardTrigger="<tab>"
        " let g:UltiSnipsJumpBackwardTrigger="<s-tab>"


Better Install:
Just use https://github.com/jordwalke/VimBox/
It has all of this included by default.
