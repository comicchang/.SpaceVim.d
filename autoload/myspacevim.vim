function! myspacevim#before() abort
    " Start interactive EasyAlign in visual mode (e.g. vipga)
    xmap ga <Plug>(EasyAlign)
    " Start interactive EasyAlign for a motion/text object (e.g. gaip)
    nmap ga <Plug>(EasyAlign)

    let g:clang_format#command = 'clang-format'  
    autocmd FileType c ClangFormatAutoEnable  
    let g:clang_format#detect_style_file = 1
    ""Compiler
    "let g:vimtex_compiler_method = 'latexmk'
    "let g:vimtex_compiler_latexmk_engines = {
    "    \ '_'                : '-pdf',
    "    \ 'pdflatex'         : '-pdf',
    "    \ 'dvipdfex'         : '-pdfdvi',
    "    \ 'lualatex'         : '-lualatex',
    "    \ 'xelatex'          : '-xelatex',
    "    \ 'latexmk'          : '',
    "    \ 'context (pdftex)' : '-pdf -pdflatex=texexec',
    "    \ 'context (luatex)' : '-pdf -pdflatex=context',
    "    \ 'context (xetex)'  : '-pdf -pdflatex=''texexec --xtx''',
    "    \}
    ""let g:vimtex_compiler_latexmk = {
    ""    \ 'options' : [
    ""    \   '-xelatex',
    ""    \   '-verbose',
    ""    \   '-file-line-error',
    ""    \   '-synctex=1',
    ""    \   '-interaction=nonstopmode',
    ""    \ ],
    ""    \}

    ""Viewer
    "let uname = substitute(system('uname'), '\n', '', '')
    "if uname == 'Linux' 
    "    let g:vimtex_view_method='general'
    "    let g:vimtex_view_general_viewer = 'okular'
    "    let g:vimtex_view_general_options = '--unique file:@pdf\#src:@line@tex'
    "elseif uname == 'Darwin'
    "    let g:vimtex_view_method='skim'
    "else " windows
    "    " do windows command
    "endif
    "let g:vimtex_view_automatic = 1
    "let g:vimtex_view_general_options_latexmk = '--unique'
    "let g:vimtex_view_forward_search_on_start = 1
    "let g:vimtex_quickfix_latexlog = {
    "      \ 'overfull' : 0,
    "      \ 'underfull' : 0,
    "      \ 'packages' : {
    "      \   'default' : 0,
    "      \ },
    "      \}

    ""Others
    "let g:vimtex_quickfix_autoclose_after_keystrokes = 2
    "let g:tex_conceal = ""
    "let g:neomake_tex_enabled_makers = []

    "if has('nvim')
    "    let g:vimtex_compiler_progname = 'nvr'
    "endif

    "set fillchars=fold:>
    "let g:vimtex_fold_enabled = 1
    "let g:vimtex_fold_types = {
    "            \ 'comments' : {},
    "            \}
    set foldlevelstart=20

    "let g:SPACEVIM_SERVER_ADDRESS='VIM'
    "if empty(v:servername) && exists('*remote_startserver')
    "    call remote_startserver('/tmp/nvimsocket')
    "endif

    augroup CrisiParentheses
        autocmd FileType markdown,tex setlocal wrap
    augroup END
    
    let g:NERDSpaceDelims=1

    "let g:UltiSnipsExpandTrigger = '<tab>'
    "let g:UltiSnipsJumpForwardTrigger = '<tab>'
    "let g:UltiSnipsJumpBackwardTrigger = '<s-tab>'

endfunction

function! myspacevim#after() abort
    " set guifontwide="方正兰亭圆_GBK"
    " set guifont=Source Code Pro:h12
    set linespace=2
    " set guifontset=
    " set guifont=SourceCodePro-Regular:h12
    " set guifontwide=FZLanTingYuan-R-GBK:h14

    set conceallevel=0

    nmap <Leader>;; <Plug>NERDCommenterToggle
    omap <Leader>;; <Plug>NERDCommenterToggle
    vmap <Leader>;; <Plug>NERDCommenterToggle

endfunction
