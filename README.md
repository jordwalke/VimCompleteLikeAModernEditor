VimCompleteLikeAModernEditor
============================

Make Vim complete like a modern editor - does the right thing. Works with Ultisnips and neocomplete.

Use `VimCompleteLikeAModernEditor` to add keyboard interactions to `Ultisnips` and `neocomplete` in a way that behaves like Sublime/XCode etc.

  - Assumes you have installed `ultisnips` as well as `neocomplete` (See install instructions).
  - Lets you use either `Enter` or `Tab` to complete words or expand snippets - just like Sublime.
  - Removes all default snippets.
  - Tells the snippet system to look for your custom snippets in `~/.vim/myUltiSnippets/`

Install:

        " Requirements:
        " Place snippets in ~/.vim/myUltiSnippets/
        Bundle "Shougo/neocomplete.vim"
        let g:neocomplete#enable_at_startup = 1
        let g:neocomplete#enable_auto_select = 1
        
        Bundle "git://github.com/SirVer/ultisnips.git"
        
        " Plugin
        Bundle "jordwalke/VimCompleteLikeAModernEditor"

