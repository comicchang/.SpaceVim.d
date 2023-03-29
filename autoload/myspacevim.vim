function! myspacevim#before() abort
    " Start interactive EasyAlign in visual mode (e.g. vipga)
    xmap ga <Plug>(EasyAlign)
    " Start interactive EasyAlign for a motion/text object (e.g. gaip)
    nmap ga <Plug>(EasyAlign)

    set foldlevelstart=20

    augroup CrisiParentheses
        autocmd FileType markdown,tex setlocal wrap
    augroup END
    
    let g:NERDSpaceDelims=1

endfunction

function! myspacevim#after() abort
    set linespace=2
    set conceallevel=0

    nmap <Leader>;; <Plug>NERDCommenterToggle
    omap <Leader>;; <Plug>NERDCommenterToggle
    vmap <Leader>;; <Plug>NERDCommenterToggle

endfunction
