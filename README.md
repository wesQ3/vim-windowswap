WindowSwap.vim
==============
Swap windows without ruining your layout!

Vim's window movement commands work fine when you only have a few splits open or want to push a window over to an edge. But what happens when you have a complicated layout and you just want to swap a couple arbitrary windows?

![img](http://i.imgur.com/Xvj9R.png)
`^W - L` isn't going to cut it here.

When I was just getting started with Vim, [I asked about this problem on StackOverflow][1] and I've received a handful of responses over the years. Almost a year after after I asked, [sgriffin came through with a solution][2]. Now that I'm a little less of a newbie, I've put his idea in a handy plugin.

Key Bindings
----------------
Defaults:
* [y]ank a [w]indow with <leader>yw (for me that's [,yw])
* [p]aste that [w]indow with <leader>pw.

Customize the commands to your liking by dropping this in your `.vimrc` and changing the mappings:

```VimL
let g:windowswap_map_keys = 0 "prevent default bindings
nnoremap <silent> <leader>yw :call WindowSwap#MarkWindowSwap()<CR>
nnoremap <silent> <leader>pw :call WindowSwap#DoWindowSwap()<CR>
```
Installation
------------

This plugin follows the standard runtime path structure, and as such it can be installed with a variety of plugin managers:
*  [Vundle][13] - `Bundle 'wesQ3/vim-windowswap'`
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
