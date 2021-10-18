"Mingye's vim config
"Syntax highlighting and indentation
filetype plugin on
filetype indent on
syntax on
set background=dark
colorscheme solarized


"Show line number
set number
set relativenumber

set clipboard+=unnamedplus

"Plugin management
call plug#begin('~/.vim/plugged')

"plugins
Plug 'kovetskiy/sxhkd-vim'
Plug 'lervag/vimtex'
Plug 'vim-syntastic/syntastic'

call plug#end()


"Latex config
let g:tex_flavor='latex'
let g:vimtex_view_method='zathura'
let g:vimtex_quickfix_open_on_warning=0
set conceallevel=1
let g:tex_conceal='abdmg'
hi Conceal guibg=White guifg=Green
hi clear Conceal

"latex svg fix
let g:vimtex_compiler_latexmk = {
    \ 'options' : [
    \   '-pdf',
    \   '-shell-escape',
    \   '-verbose',
    \   '-file-line-error',
    \   '-synctex=1',
    \   '-interaction=nonstopmode',
    \ ],
    \}

"let g:loaded_youcompleteme = 1
"UltiSnips config
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"
let g:UltiSnipsSnippetDirectories=[$HOME.'/.vim/UltiSnips']

"Syntastic config
"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*
"let g:syntastic_always_populate_loc_list = 1
"let g:syntastic_auto_loc_list = 1
"let g:syntastic_check_on_open = 1
"let g:syntastic_check_on_wq = 0
"
"Termdebug
packadd termdebug

"change tab to 4 spaces
set softtabstop=4
set shiftwidth=4
set noexpandtab

"display tab number
