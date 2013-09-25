WindowSwap.vim
==============
Swap windows without ruining your layout!  
Vim's window movement commands work fine when you only have a few splits open or want to push a window over to an edge. But what happens when you have a complicated layout and you just want to swap an arbitrary window?

![img](http://i.imgur.com/Xvj9R.png)
^W - L isn't going to cut it here.

When I was just getting started with Vim, [I asked about this problem on StackOverflow][1] and I've received a handful of responses over the years. Almost a year after after I asked, [sgriffin came through with a solution][2]. Now that I'm a little less of a newbie, I've put his idea in a handy plugin.

Key Bindings
----------------
Defaults:
* [y]ank a [w]indow with <leader>yw (for me that's [,yw])
* [p]aste that [w]indow with <leader>pw.

```VimL
let g:windowswap_map_keys = 0 "prevent default bindings
nnoremap <silent> <leader>yw :call WindowSwap#MarkWindowSwap()<CR>
nnoremap <silent> <leader>pw :call WindowSwap#DoWindowSwap()<CR>
```
[1]: http://stackoverflow.com/q/2586984/77782
[2]: http://stackoverflow.com/a/4903681/77782
