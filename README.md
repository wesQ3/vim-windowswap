WindowSwap.vim
==============
Swap windows without ruining your layout!

![img](http://i.imgur.com/jo3V05S.gif)

Vim's window movement commands work fine when you only have a few splits open or want to push a window over to an edge. But what happens when you have a complicated layout and you just want to swap a couple arbitrary windows?

When I was just getting started with Vim, [I asked about this problem on StackOverflow][1] and I've received a handful of responses over the years. Almost a year after after I asked, [sgriffin came through with a solution][2]. Now that I'm a little less of a newbie, I've put his idea in a handy plugin.

HowTo
---------------
1. Navigate to the window you'd like to move
2. Press `<leader>ww`
3. Navigate to the window you'd like to swap with
4. Press `<leader>ww` again

Key Bindings
----------------
Defaults:
* Yank and paste a window with `<leader>ww` (for me that's `,ww`)

**Deprecated** defaults:
* [y]ank a [w]indow with `<leader>yw`
* [p]aste that [w]indow with `<leader>pw`.

These mappings are deprecated. See below for instructions on how to keep them working once they are removed from the default list.

Customize the commands to your liking by dropping this in your `.vimrc` and changing the mappings:

```VimL
let g:windowswap_map_keys = 0 "prevent default bindings
nnoremap <silent> <leader>yw :call WindowSwap#MarkWindowSwap()<CR>
nnoremap <silent> <leader>pw :call WindowSwap#DoWindowSwap()<CR>
nnoremap <silent> <leader>ww :call WindowSwap#EasyWindowSwap()<CR>
```
Installation
------------

This plugin follows the standard runtime path structure, and as such it can be installed with a variety of plugin managers:
*  [Vundle][13] - `Plugin 'wesQ3/vim-windowswap'`
*  [Pathogen][11] - `git clone https://github.com/wesQ3/vim-windowswap ~/.vim/bundle/vim-windowswap`
*  [NeoBundle][12] - `NeoBundle 'wesQ3/vim-windowswap'`
*  [VAM][22] - `call vam#ActivateAddons([ 'wesQ3/vim-windowswap' ])`
*  manual - copy all of the files into your `~/.vim` directory

[1]: http://stackoverflow.com/q/2586984/77782
[2]: http://stackoverflow.com/a/4903681/77782
[11]: https://github.com/tpope/vim-pathogen
[12]: https://github.com/Shougo/neobundle.vim
[13]: https://github.com/gmarik/vundle
[22]: https://github.com/MarcWeber/vim-addon-manager
