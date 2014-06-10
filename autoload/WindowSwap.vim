" WindowSwap!

let g:markedWinNum = 0
function! WindowSwap#MarkWindowSwap()
   let g:markedWinNum = winnr()
endfunction

function! WindowSwap#DoWindowSwap()
   if g:markedWinNum == 0
      echom "WindowSwap: No window marked to swap! Mark a window first."
      return
   endif
   "Mark destination
   let curNum = winnr()
   let curBuf = bufnr( "%" )
   exe g:markedWinNum . "wincmd w"
   "Switch to source and shuffle dest->source
   let markedBuf = bufnr( "%" )
   "Hide and open so that we aren't prompted and keep history
   exe 'hide buf' curBuf
   "Switch to dest and shuffle source->dest
   exe curNum . "wincmd w"
   "Hide and open so that we aren't prompted and keep history
   exe 'hide buf' markedBuf
   let g:markedWinNum = 0
endfunction

function! WindowSwap#EasyWindowSwap()
   if g:markedWinNum == 0
      call WindowSwap#MarkWindowSwap()
   else
      call WindowSwap#DoWindowSwap()
   endif
endfunction

