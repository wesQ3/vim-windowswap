" WindowSwap!

let s:markedWinNum = 0

function! WindowSwap#MarkWindowSwap()
   call WindowSwap#SetMarkedWindowNum( winnr() )
endfunction

function! WindowSwap#DoWindowSwap()
   if !WindowSwap#HasMarkedWindow()
      echom "WindowSwap: No window marked to swap! Mark a window first."
      return
   endif
   "Mark destination
   let curNum = winnr()
   let curBuf = bufnr( "%" )
   exe WindowSwap#GetMarkedWindowNum() . "wincmd w"
   "Switch to source and shuffle dest->source
   let markedBuf = bufnr( "%" )
   "Hide and open so that we aren't prompted and keep history
   exe 'hide buf' curBuf
   "Switch to dest and shuffle source->dest
   exe curNum . "wincmd w"
   "Hide and open so that we aren't prompted and keep history
   exe 'hide buf' markedBuf
   call WindowSwap#ClearMarkedWindowNum()
endfunction

function! WindowSwap#EasyWindowSwap()
   if WindowSwap#HasMarkedWindow()
      call WindowSwap#DoWindowSwap()
   else
      call WindowSwap#MarkWindowSwap()
   endif
endfunction

function! WindowSwap#GetMarkedWindowNum()
   return s:markedWinNum
endfunction

function! WindowSwap#SetMarkedWindowNum(num)
   let s:markedWinNum = a:num
endfunction

function! WindowSwap#ClearMarkedWindowNum()
   let s:markedWinNum = 0
endfunction

function! WindowSwap#HasMarkedWindow()
   if WindowSwap#GetMarkedWindowNum() == 0
      return 0
   else
      return 1
   endif
endfunction

