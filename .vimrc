" all credit goes to gitlab.com/smokals for this incredible config
" make sure you have vimplug installed

call plug#begin()
Plug 'vim-airline/vim-airline'
Plug 'scrooloose/nerdtree'
Plug 'scrooloose/nerdcommenter'
Plug 'scrooloose/syntastic'
Plug 'junegunn/fzf', {'dir': '~/.fzf', 'do': './install --all'}
Plug 'junegunn/fzf.vim'
Plug 'airblade/vim-gitgutter'
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-surround'
Plug 'terryma/vim-multiple-cursors'
Plug 'tpope/vim-eunuch'
Plug 'edkolev/tmuxline.vim'
Plug 'ntpeters/vim-better-whitespace'
Plug 'vimwiki/vimwiki'
Plug 'lervag/vimtex'

Plug 'morhetz/gruvbox'
" Plug 'dracula/vim', {'as': 'dracula'}
call plug#end()

set number
set relativenumber
syntax on

set autochdir
set autoindent

set cursorline
set cursorcolumn
set colorcolumn=100

" open splits below & to the right of the current window, rather than the other way around
set splitbelow splitright

set viminfo=
set encoding=utf-8

set tabstop=4
set shiftwidth=4
set noexpandtab

set backup
set backupdir=~/vimtmp/
set directory=~/vimtmp/

set noshowmode

set background=dark

filetype on
filetype plugin on
filetype indent off

" make sure ftplugin doesn't change indentation settings
" this is probably a terrible way of doing so
autocmd FileType * set autoindent tabstop=4 shiftwidth=4 noexpandtab

" C-h & C-l for tab switching
nnoremap <C-h> gT
nnoremap <C-l> gt

nnoremap <f5> :NERDTreeToggle<cr>
nnoremap <f6> :!make<cr>
map ; :Files<cr>

command LatexCompile execute "!pdflatex %"
command Mupdf execute "!mupdf %:r.pdf"
nnoremap <f9> :LatexCompile<cr>
nnoremap <f10> :Mupdf<cr>

let g:gruvbox_bold=1
let g:gruvbox_italic=1
let g_gruvbox_underline=1
let g_gruvbox_undercurl=1
colorscheme gruvbox
autocmd VimEnter * hi Normal ctermbg=none
" highlight Normal ctermbg=none



" nerdcomment
let g:NERDSpaceDelims=1            " add a space after comment delimiters
let g:NERDCompactSexyComs=1        " use compact syntax
let g:NERDCommentEmptyLines=1      " allow commenting empty lines
let g:NERDTrimTrailingWhitespace=1 " remove trailing whitespace after uncommenting
let g:NERDToggleCheckAllLines=1    " check all selected lines for preexisting commenting

" syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0


" patched fonts for vim airline plugin
let g:airline_powerline_fonts = 1
if !exists('g:airline_symbols')
	let g:airline_symbols = {}
endif
let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.whitespace = 'Ξ'
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''

" airline tabs
let g:airline#extensions#tabline#enabled = 1

" vimwiki
let g:vimwiki_list = [{"path": "~/vimwiki/", "syntax": "markdown", "ext": ".md"}]

" open compiled LaTeX PDFs in mupdf
let g:vimtex_view_method = "mupdf"
