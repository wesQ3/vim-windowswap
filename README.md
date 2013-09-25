WindowSwap.vim
==============
Swap windows without ruining your layout!

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
