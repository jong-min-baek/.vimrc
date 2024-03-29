set number
set whichwrap+=<,>,h,l,[,]
syntax enable
set tabstop=4
set shiftwidth=4
set expandtab
set softtabstop=4
set wrap
set linebreak
set nolist
nnoremap j gj
nnoremap k gk
inoremap jk <Esc>

function SmoothScroll(up)
    if a:up
        let scrollaction="^Y"
    else
        let scrollaction="^E"
    endif
    exec "normal " . scrollaction
    redraw
    let counter=1
    while counter<&scroll
        let counter+=2
        sleep 10m 
        redraw
        exec "normal " . scrollaction
    endwhile
endfunction

nnoremap <C-K> :call SmoothScroll(1)<Enter>
nnoremap <C-J> :call SmoothScroll(0)<Enter>
inoremap <C-K> <Esc>:call SmoothScroll(1)<Enter>i
inoremap <C-J> <Esc>:call SmoothScroll(0)<Enter>i
