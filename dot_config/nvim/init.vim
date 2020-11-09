scriptencoding utf-8

" Plugins {{{ "

" Auto-install vim-plug
if empty(glob('$XDG_DATA_HOME/nvim/site/autoload/plug.vim'))
    !git clone 'https://github.com/junegunn/vim-plug' $XDG_DATA_HOME/nvim/site/autoload
endif

call plug#begin('$XDG_DATA_HOME/nvim/site/plugged')

" Interface
Plug 'junegunn/fzf.vim'

" Navigation
Plug 'tpope/vim-rsi'

" Editor
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-surround'
Plug 'junegunn/vim-easy-align'
Plug 'ntpeters/vim-better-whitespace'
Plug 'AndrewRadev/sideways.vim'
Plug 'AndrewRadev/splitjoin.vim'

" Text objects
Plug 'kana/vim-textobj-user'
Plug 'kana/vim-textobj-fold'
Plug 'kana/vim-textobj-entire'
Plug 'kana/vim-textobj-indent'
Plug 'glts/vim-textobj-comment'

" Colorscheme
Plug 'arzg/vim-colors-xcode'
Plug 'morhetz/gruvbox'

" Completion & Linting
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Languages

Plug 'StanAngeloff/php.vim'
" Plug 'fatih/vim-go', {'dir': 'syntax'}
Plug 'maxmellon/vim-jsx-pretty'
Plug 'neoclide/jsonc.vim'
Plug 'leafgarland/typescript-vim'
Plug 'hashivim/vim-terraform'
Plug 'pearofducks/ansible-vim'
Plug 'chr4/nginx.vim'
Plug 'pangloss/vim-javascript'
Plug 'plasticboy/vim-markdown'
Plug 'udalov/kotlin-vim'

call plug#end()

" }}} Plugins "

" Options {{{ "

" Disable modlines (for security reasons)
set nomodeline
set modelines=0

" Block cursor
" set guicursor=

" File encodings
set fileencodings=utf-8,cp1251

" Show line numbers (hybrid)
" set relativenumber
set number

" Always show status line
set laststatus=2

" Hide status line at the bottom
set noshowmode

" Allow switching buffers without saving
set hidden

" Enable mouse
set mouse=a

" This will cause all yank/delete/paste operations to use the system register *
set clipboard=unnamed,unnamedplus

" Show incomplete commands
set showcmd

" Wildignore
set wildignore=.git,.svn,node_modules,dist,build,*.o,*.a,*.pyc,*.class,venv

" Enable syntax highlighting
syntax enable

" Colorscheme
set termguicolors

set background=dark
try
    " let g:gruvbox_invert_selection = 0
    " colorscheme gruvbox
    " colorscheme xcodedark
    colorscheme xcode
catch /^Vim\%((\a\+)\)\=:E185/
    colorscheme desert
endtry

" Count of spaces per tab when editing
set softtabstop=4

" Number of visual spaces per tab
set tabstop=4

" <<, >> spaces
set shiftwidth=4

" Use tabs for indent
set expandtab

" Display tabs and trailing spaces visually
set list listchars=tab:➝\ ,eol:¬

" Mouse and backspace
set backspace=indent,eol,start

" Don't wrap lines
set nowrap

" Count of remembered commands
set history=1000

" Count of undo
set undolevels=1000

" Disable backup files
set nobackup
set nowritebackup

" Disable swap files
set noswapfile

" Case insensitive search
set ignorecase
set smartcase

" Highlight matches
set hlsearch

" Seach while typing
set incsearch

" Enable modelines
set modeline

" Detect filetypes
filetype plugin on

" Load filetype-specific indent files
filetype indent on

" Enable folding
set foldenable

" Set fold method
set foldmethod=marker

" Show only menu on completion
" set completeopt=menu

" Interactive replace
set inccommand=nosplit

" suppress the annoying 'match x of y', 'The only match' and 'Pattern not
" found' messages
set shortmess+=c

" This will show the popup menu even if there's only one match (menuone),
" prevent automatic selection (noselect) and prevent automatic text injection
" into the current line (noinsert).
set completeopt=noinsert,menuone,noselect

" }}} Options "

" Colours {{{ "

" Gruvbox
" let s:colours = {
" \ 'gui':  {
" \         'dark0_hard':     '#1d2021',
" \         'dark0':          '#282828',
" \         'dark0_soft':     '#32302f',
" \         'dark1':          '#3c3836',
" \         'dark2':          '#504945',
" \         'dark3':          '#665c54',
" \         'dark4':          '#7c6f64',
" \         'gray_245':       '#928374',
" \         'gray_244':       '#928374',
" \         'light0_hard':    '#f9f5d7',
" \         'light0':         '#fbf1c7',
" \         'light0_soft':    '#f2e5bc',
" \         'light1':         '#ebdbb2',
" \         'light2':         '#d5c4a1',
" \         'light3':         '#bdae93',
" \         'light4':         '#a89984',
" \         'bright_red':     '#fb4934',
" \         'bright_green':   '#b8bb26',
" \         'bright_yellow':  '#fabd2f',
" \         'bright_blue':    '#83a598',
" \         'bright_purple':  '#d3869b',
" \         'bright_aqua':    '#8ec07c',
" \         'bright_orange':  '#fe8019',
" \         'red':    '#cc241d',
" \         'green':  '#98971a',
" \         'yellow': '#d79921',
" \         'blue':   '#458588',
" \         'purple': '#b16286',
" \         'aqua':   '#689d6a',
" \         'orange': '#d65d0e',
" \         'faded_red':      '#9d0006',
" \         'faded_green':    '#79740e',
" \         'faded_yellow':   '#b57614',
" \         'faded_blue':     '#076678',
" \         'faded_purple':   '#8f3f71',
" \         'faded_aqua':     '#427b58',
" \         'faded_orange':   '#af3a03',
" \     }
" \ }

" Xcode
let s:colours = {
\ 'gui':  {
\        'black':          '#393b44',
\        'red':            '#ff8170',
\        'green':          '#78c2b3',
\        'yellow':         '#d9c97c',
\        'blue':           '#4eb0cc',
\        'magenta':        '#ff7ab2',
\        'cyan':           '#b281eb',
\        'white':          '#dfdfe0',
\        'foreground':     '#dfdfe0',
\        'background':     '#292a30',
\        'bright_black':   '#7f8c98',
\        'bright_red':     '#ff8170',
\        'bright_green':   '#acf2e4',
\        'bright_yellow':  '#ffa14f',
\        'bright_blue':    '#6bdfff',
\        'bright_magenta': '#ff7ab2',
\        'bright_cyan':    '#dabaff',
\        'bright_white':   '#dfdfe0',
\     }
\ }

let g:terminal_color_0 = s:colours.gui.black
let g:terminal_color_1 = s:colours.gui.red
let g:terminal_color_2 = s:colours.gui.green
let g:terminal_color_3 = s:colours.gui.yellow
let g:terminal_color_4 = s:colours.gui.blue
let g:terminal_color_5 = s:colours.gui.magenta
let g:terminal_color_6 = s:colours.gui.cyan
let g:terminal_color_7 = s:colours.gui.white
let g:terminal_color_8 = s:colours.gui.bright_black
let g:terminal_color_9 = s:colours.gui.bright_red
let g:terminal_color_10 = s:colours.gui.bright_green
let g:terminal_color_11 = s:colours.gui.bright_yellow
let g:terminal_color_12 = s:colours.gui.bright_blue
let g:terminal_color_13 = s:colours.gui.bright_magenta
let g:terminal_color_14 = s:colours.gui.bright_cyan
let g:terminal_color_15 = s:colours.gui.bright_white

" }}} Colours "

" Key mappings {{{"

" Rebind leader key to space
let g:mapleader = ' '

" Set localleader
let g:maplocalleader = ','

" Write file
nnoremap <Leader>w :w!<CR>

" Quit
nnoremap <Leader>q :q<CR>

" Only
nnoremap <Leader>o :only<CR>

" Select pasted text
noremap gV `[v`]

" Paste in insert mode
inoremap <C-y> <C-o>p

if has('nvim')
    nmap <bs> :<c-u>TmuxNavigateLeft<cr>
endif

" Quickfix
nnoremap <Leader>n :cnext<CR>
nnoremap <Leader>p :cprev<CR>

" Clear last search highlighting
map <Leader><Leader> :noh<cr>

" }}} Key mappings "

" Autocmd: SignColumn {{{ "

function! ShowSignColumn()
    sign define always_shown_sign
    exec 'sign place 9999 line=1 name=always_shown_sign buffer=' . bufnr('')
endfunction

augroup augroup_always_show_sign_column
    autocmd!
    autocmd BufEnter * call ShowSignColumn()
augroup END

" }}} Autocmd: SignColumn "

" Statusline {{{1 "

" Helpers {{{2 "

function! s:spacewrap(str)
    return printf('  %s ', a:str)
endfunction

function! s:titlecase(str)
    return substitute(a:str, '\<\(\w\)\(\w*\)\>', '\u\1\L\2', 'g')
endfunction

function! s:format_hlgroup_name(str)
    return substitute(a:str, '-', '_', 'g')
endfunction

function! s:link_hlgroups(group1, group2)
    exec printf('hi link %s %s', a:group1, a:group2)
endfunction

function! s:link_hlsubgroups(group, subgroup_id)
    let l:hlsubgroup = a:group . '_' . s:format_hlgroup_name(a:subgroup_id)
    call s:link_hlgroups(a:group, l:hlsubgroup)
endfunction

" 2}}} Helpers "

" Refresh {{{2 "

function! StatusLineBuild(active, ...)
    let l:statusline = ''

    if a:active == 1
        let l:statusline .= '%#StatusLineMode#'
        let l:statusline .= '%{StatusLineMode()}'

        let l:statusline .= '%#StatusLineWindowType#'
        let l:statusline .= '%{StatusLineWindowType()}'

        let l:statusline .= '%#StatusLineFile#'
        let l:statusline .= '%{StatusLineFile()}'

        let l:statusline .= '%='

        let l:statusline .= '%#NeomakeErrorSign#'
        let l:statusline .= '%{StatusLineNeomake("E", "✘")}'

        let l:statusline .= '%#NeomakeWarningSign#'
        let l:statusline .= '%{StatusLineNeomake("W", "❢")}'

        let l:statusline .= '%#StatusLineBranch#'
        let l:statusline .= '%{StatusLineBranch()}'

        let l:statusline .= '%#StatusLinePercent#'
        let l:statusline .= ' %p%% '

        let l:statusline .= '%#StatusLinePosition#'
        let l:statusline .= ' %l:%c '

    else
        let l:statusline .= '%#StatusLineWindowType#'
        let l:statusline .= '%{StatusLineWindowType()}'

        let l:statusline .= '%#StatusLineFile#'
        let l:statusline .= '%{StatusLineFile()}'

        let l:statusline .= '%='

        let l:statusline .= '%#StatusLineBranch#'
        let l:statusline .= '%{StatusLineBranch()}'
    endif

    return l:statusline
endfunction

function! StatusLineRefresh(...)
    let l:statuslines = [StatusLineBuild(0), StatusLineBuild(1)]
    for l:nr in range(1, winnr('$'))
        let l:active = (l:nr == winnr())
        call setwinvar(l:nr, '&statusline', l:statuslines[l:active])
    endfor
endfunction

augroup augroup_status_line
    autocmd!
    autocmd VimEnter,WinEnter,BufWinEnter * call StatusLineRefresh()
augroup end

function! RedrawStatus()
    redrawstatus
    return ''
endfunction

nnoremap <silent> : :<C-\>eRedrawStatus()<CR>

" 2}}} Refresh "

" Percent & Position {{{

exec 'hi StatusLinePercent'
\   ' guibg=' . s:colours.gui.black .
\   ' guifg=' . s:colours.gui.foreground .
\   ' gui=bold'

exec 'hi StatusLinePosition'
\   ' guibg=' . s:colours.gui.bright_black .
\   ' guifg=' . s:colours.gui.black .
\   ' gui=bold'

" }}} Percent & Position

" Mode {{{2 "

exec 'hi StatusLineMode_NORMAL'
\   ' guibg=' . s:colours.gui.blue .
\   ' guifg=' . s:colours.gui.black .
\   ' gui=bold'

exec 'hi StatusLineMode_INSERT'
\   ' guibg=' . s:colours.gui.green .
\   ' guifg=' . s:colours.gui.black .
\   ' gui=bold'

exec 'hi StatusLineMode_VISUAL'
\   ' guibg=' . s:colours.gui.yellow .
\   ' guifg=' . s:colours.gui.black .
\   ' gui=bold'

exec 'hi StatusLineMode_V_LINE'
\   ' guibg=' . s:colours.gui.yellow .
\   ' guifg=' . s:colours.gui.black .
\   ' gui=bold'

exec 'hi StatusLineMode_V_BLOCK'
\   ' guibg=' . s:colours.gui.yellow .
\   ' guifg=' . s:colours.gui.black .
\   ' gui=bold'

exec 'hi StatusLineMode_REPLACE'
\   ' guibg=' . s:colours.gui.red .
\   ' guifg=' . s:colours.gui.black .
\   ' gui=bold'

exec 'hi StatusLineMode_COMMAND'
\   ' guibg=' . s:colours.gui.cyan .
\   ' guifg=' . s:colours.gui.black .
\   ' gui=bold'

exec 'hi StatusLineMode_TERMINAL'
\   ' guibg=' . s:colours.gui.magenta .
\   ' guifg=' . s:colours.gui.black .
\   ' gui=bold'

function! s:mode2name(mode)
    let l:mode_map = {
    \     'n':      'NORMAL',
    \     'i':      'INSERT',
    \     'R':      'REPLACE',
    \     'v':      'VISUAL',
    \     'V':      'V-LINE',
    \     'c':      'COMMAND',
    \     "\<C-v>": 'V-BLOCK',
    \     's':      'SELECT',
    \     'S':      'S-LINE',
    \     "\<C-s>": 'S-BLOCK',
    \     't':      'TERMINAL',
    \     '?':      ' '
    \ }
    return l:mode_map[a:mode]
endfunction

function! StatusLineMode()
    let l:modename = s:mode2name(mode())
    let l:filetype = &filetype

    let l:hide = l:filetype ==? 'help' ||
    \            l:filetype ==? 'fzf' ||
    \            l:filetype ==? 'qf' ||
    \            l:filetype ==? 'vim-plug' ||
    \            l:filetype ==? 'tagbar'

    if l:hide
        return ''
    endif

    let l:last_modename = get(w:, 'last_modename', '')

    " Highlight is too slow, so rehighlight only if modename is changed.
    if l:modename != l:last_modename
        call s:link_hlsubgroups('StatusLineMode', l:modename)
        let w:last_modename = l:modename
    endif

    return s:spacewrap(l:modename[0])
endfunction

" 2}}} Mode "

" WindowType {{{2 "

exec 'hi StatusLineWindowType_help'
\   ' guibg=' . s:colours.gui.green .
\   ' guifg=' . s:colours.gui.background

exec 'hi StatusLineWindowType_fzf'
\   ' guibg=' . s:colours.gui.magenta .
\   ' guifg=' . s:colours.gui.background

exec 'hi StatusLineWindowType_quickfix'
\   ' guibg=' . s:colours.gui.yellow .
\   ' guifg=' . s:colours.gui.background

exec 'hi StatusLineWindowType_plugins'
\   ' guibg=' . s:colours.gui.cyan .
\   ' guifg=' . s:colours.gui.background

exec 'hi StatusLineWindowType_tagbar'
\   ' guibg=' . s:colours.gui.green .
\   ' guifg=' . s:colours.gui.background

function! s:get_window_type(filename, filetype)
    if a:filetype ==? 'help'
        return 'help'
    elseif a:filetype ==? 'fzf'
        return 'fzf'
    elseif a:filetype ==? 'qf'
        return 'quickfix'
    elseif a:filetype ==? 'vim-plug'
        return 'plugins'
    elseif a:filetype ==? 'tagbar'
        return 'tagbar'
    else
        return ''
    endif
endfunction

function! StatusLineWindowType()
    let l:filename = expand('%:t')
    let l:filetype = &filetype
    let l:windowtype = s:get_window_type(l:filename, l:filetype)

    let l:show = l:windowtype ==? 'help' ||
    \            l:windowtype ==? 'fzf' ||
    \            l:windowtype ==? 'quickfix' ||
    \            l:windowtype ==? 'plugins' ||
    \            l:windowtype ==? 'tagbar'

    if l:show
        call s:link_hlsubgroups('StatusLineWindowType', l:windowtype)
        return s:spacewrap(s:titlecase(l:windowtype))
    endif
    return ''
endfunction

" 2}}} WindowType "

" File {{{2 "

exec 'hi StatusLineFile'
\   ' guibg=' . s:colours.gui.black .
\   ' guifg=' . s:colours.gui.foreground

function! StatusLineFile()
    let l:filetype = &filetype
    let l:filename = expand('%:t')

    let l:hide = l:filetype ==? 'fzf' ||
    \            l:filetype ==? 'vim-plug' ||
    \            l:filetype ==? 'tagbar'

    if !l:hide
        return s:spacewrap(l:filename)
    endif

    return ''
endfunction

" 2}}} File "

" Neomake {{{2 "

function! StatusLineNeomake(type, sign)

    if !exists('*neomake#statusline#LoclistCounts')
        return ''
    endif

    let l:count = 0

    let l:loclist = neomake#statusline#LoclistCounts()
    if !empty(l:loclist) && has_key(l:loclist, a:type)
        let l:count += l:loclist[a:type]
    endif

    let l:qflist = neomake#statusline#QflistCounts()
    if !empty(l:qflist) && has_key(l:qflist, a:type)
        let l:count += l:qflist[a:type]
    endif

    if l:count
        return printf(' %s %d ', a:sign, l:count)
    endif

    return ''
endfunction

" 2}}} Neomake "

" Branch {{{2 "

exec 'hi StatusLineBranch'
\   ' guibg=' . s:colours.gui.magenta .
\   ' guifg=' . s:colours.gui.foreground

function! StatusLineBranch()

    if !exists('*fugitive#head')
        return ''
    endif

    let l:filetype = &filetype
    let l:branch = fugitive#head()

    let l:hide = empty(l:branch) ||
    \            l:filetype ==? 'help' ||
    \            l:filetype ==? 'tagbar'

    if !l:hide
        return s:spacewrap(l:branch)
    endif

    return ''
endfunction

" 2}}} Branch "

" 1}}} Statusline "

" Indent {{{ "

augroup augroup_ident
    autocmd!
    autocmd Filetype go setlocal ts=2 sts=2 sw=2 noexpandtab
    autocmd Filetype css setlocal ts=2 sts=2 sw=2 expandtab
    autocmd Filetype stylus setlocal ts=2 sts=2 sw=2 expandtab
    autocmd Filetype scss setlocal ts=2 sts=2 sw=2 expandtab
    autocmd Filetype pug setlocal ts=2 sts=2 sw=2 expandtab
    autocmd Filetype javascript setlocal ts=2 sts=2 sw=2 expandtab
    autocmd Filetype javascript.jsx setlocal ts=2 sts=2 sw=2 expandtab
    autocmd Filetype typescript setlocal ts=2 sts=2 sw=2 expandtab
    autocmd Filetype typescript.tsx setlocal ts=2 sts=2 sw=2 expandtab
    autocmd Filetype sh setlocal ts=2 sts=2 sw=2 expandtab
    autocmd Filetype yaml setlocal ts=2 sts=2 sw=2 expandtab
augroup END

" }}} Indent "

" Filetypes {{{ "

augroup augroup_filetype
    autocmd!
    autocmd BufNewFile,BufRead *.heml set filetype=html
    autocmd BufNewFile,BufRead *.ksy set filetype=yaml
    autocmd BufNewFile,BufRead .babelrc,.postcssrc,.lessrc,.eslintrc set filetype=yaml
    autocmd BufNewFile,BufRead *.m set filetype=objc
    autocmd BufNewFile,BufRead *.conf set syntax=nginx
    autocmd BufNewFile,BufRead *.sage set syntax=python
    autocmd BufNewFile,BufRead *.css set syntax=less
    autocmd BufNewFile,BufRead *.tsx set filetype=typescript.tsx
    autocmd BufNewFile,BufRead *.jsx set filetype=typescript.jsx
    autocmd BufNewFile,BufRead *.json set filetype=jsonc
augroup END

" }}} Filetypes "

" Plugin: FZF {{{ "

let &runtimepath.=',' . substitute(system('brew --prefix'), "\n", '', '') . '/opt/fzf'

let g:fzf_layout = { 'down': '~30%' }

" Colors
hi FZF_fg      ctermfg=15
hi FZF_bg      ctermbg=0
hi FZF_hl      ctermfg=3
hi FZF_fg_plus ctermfg=3
hi FZF_bg_plus ctermbg=0
hi FZF_hl_plus ctermbg=3
hi FZF_info    ctermfg=8
hi FZF_prompt  ctermfg=2
hi FZF_pointer ctermfg=4
hi FZF_marker  ctermfg=3
hi FZF_spinner ctermfg=4
hi FZF_header  ctermfg=1

let g:fzf_colors = {
\     'fg':      ['fg', 'FZF_fg'],
\     'bg':      ['bg', 'FZF_bg'],
\     'hl':      ['fg', 'FZF_hl'],
\     'fg+':     ['fg', 'FZF_fg_plus'],
\     'bg+':     ['bg', 'FZF_bg_plus'],
\     'hl+':     ['fg', 'FZF_hl_plus'],
\     'info':    ['fg', 'FZF_info'],
\     'prompt':  ['fg', 'FZF_prompt'],
\     'pointer': ['fg', 'FZF_pointer'],
\     'marker':  ['fg', 'FZF_marker'],
\     'spinner': ['fg', 'FZF_spinner'],
\     'header':  ['fg', 'FZF_header']
\ }

" Go to file (f - file)
nnoremap <Leader>f :Files<CR>

" Go to tag in project (g - goto)
nnoremap <Leader>g :Tags<CR>

" Go to tag in buffer (m - methods)
nnoremap <Leader>m :BTags<CR>

" Search with ag (/ - like vim search)
nnoremap <leader>/ :execute 'Ag ' . input('Ag/')<CR>

" Go to buffer (s - swithch)
nnoremap <Leader>s :Buffers<CR>

" Use common statusline
augroup augroup_fzf_status_line
    autocmd!
    autocmd User FzfStatusLine call StatusLineRefresh()
augroup END

" }}} Plugin: FZF "

" Plugin: EasyAlign {{{ "

vnoremap gaa :EasyAlign<Space>
vnoremap gaA :EasyAlign<CR><C-x>

vnoremap ga= :EasyAlign =<CR>
vnoremap ga: :EasyAlign :<CR>
vnoremap ga/ :EasyAlign #<CR>
vnoremap ga\ :EasyAlign<CR><C-x>\\<CR>

" }}} Plugin: EasyAlign "

" Plugin: Surround {{{ "

" Surround with single/double quiote
nmap gs' ysiW'
nmap gs" ysiW"
nmap gs) ysiW)

" }}} Plugin: Surround "

" Plugin: coc.vim {{{ "

exec 'hi CocErrorSign guifg=' . s:colours.gui.red

" Notify coc.nvim that `<enter>` has been pressed.
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
            \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

" Remap keys for gotos
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use tab for trigger completion with characters ahead and navigate.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? coc#_select_confirm() :
      \ coc#expandableOrJumpable() ? "\<C-r>=coc#rpc#request('doKeymap', ['snippets-expand-jump',''])\<CR>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

let g:coc_snippet_next = '<tab>'

" Applying codeAction to the selected region.
" Example: `<leader>aap` for current paragraph
xmap <localleader>a <Plug>(coc-codeaction-selected)
nmap <localleader>a <Plug>(coc-codeaction-selected)

" Introduce function text object
" NOTE: Requires 'textDocument.documentSymbol' support from the language server.
xmap if <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap if <Plug>(coc-funcobj-i)
omap af <Plug>(coc-funcobj-a)

" Golang
augroup augroup_golang
    autocmd!
    autocmd BufWritePre *.go :call CocAction('runCommand', 'editor.action.organizeImport')
augroup END

" }}} Plugin: coc.vim "

" Plugin: Sideways {{{ "

nnoremap gh :SidewaysLeft<CR>
nnoremap gl :SidewaysRight<CR>

" }}} Plugin: Sideways "

" Plugin: Markdown {{{ "

let g:vim_markdown_folding_disabled = 1
let g:vim_markdown_frontmatter = 1

" }}} Plugin: Markdown "

" LF {{{ "

let g:lf_path = 'lf'

function! OpenLF(path)
    let l:path = expand(a:path)
    let l:tmpfile = tempname()
    let l:curfile = expand('%:p')
    let l:callback = {
    \ 'name': 'ranger',
    \ 'tmpfile': l:tmpfile,
    \ 'curfile': l:curfile,
    \ 'curfile_existed': filereadable(l:curfile),
    \ 'curbufnr': bufnr('%'),
    \ }

    function! l:callback.on_exit(id, code, event)
        bdelete!

        if l:self.curfile_existed &&
        \ !filereadable(l:self.curfile)
            exec 'bdelete ' . l:self.curbufnr
        endif

        set hidden

        " Open selected files
        if filereadable(l:self.tmpfile)
            for l:fpath in readfile(l:self.tmpfile)
                exec 'edit '. l:fpath
            endfor
            call delete(l:self.tmpfile)
        endif
    endfunction

    write
    set nohidden
    enew

    let l:command = g:lf_path .
    \ ' -selection-path ' . shellescape(l:tmpfile) .
    \ ' ' . shellescape(l:path)

    call termopen(l:command, l:callback)
    startinsert
endfunction

" Start ranger in current buffer directory (d - directory)
nnoremap <Leader>d :call OpenLF('%:p')<CR>

augroup augroup_terminal
    autocmd!
    autocmd TermOpen * setlocal nolist
augroup END

" }}} Ranger "
