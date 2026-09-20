" YAML doesn't allow tabs for indent
autocmd FileType yaml setlocal expandtab

set hlsearch
set ruler
set rulerformat=%23(%l/%L\ %c-%v%=%p%%%)
set ts=2
set shiftwidth=2
set expandtab
set incsearch
"set background=dark
set splitright
set splitbelow
set clipboard=unnamed " Use system clipboard for yanks/puts

" set t_&8= " Vim's <Undo> key maps to F14. Unset it here.
" set t_%1= " Vim's <Help> key maps to F15. Unset it here.

" set t_F1=[23~ " F11 on Apple Extended Keyboard
" set t_F2=[24~ " F12 on Apple Extended Keyboard
" set t_F3=[25~ " F13 on Apple Extended Keyboard
" set t_F4=[26~ " F14 on Apple Extended Keyboard
" set t_F5=[28~ " F15 on Apple Extended Keyboard
" set t_F6=[29~ " F16 on Apple Extended Keyboard
" set t_F7=[31~ " F17 on Apple Extended Keyboard
" set t_F8=[32~ " F18 on Apple Extended Keyboard
" set t_F9=[33~ " F19 on Apple Extended Keyboard

" map <F15> :echo synIDattr(synID(line("."),col("."),1),"name")<CR>

" Git commit messageshave special highlighting that irritates me
augroup CustomGitCommitHighlights
    autocmd!
    autocmd ColorScheme * highlight! link gitcommitSummary Normal
    autocmd ColorScheme * highlight! link gitcommitBlank Normal
    autocmd ColorScheme * highlight! link gitcommitHeader Comment
augroup END

syntax enable
set termguicolors
colorscheme catppuccin

" hi	StatusLine		ctermfg=Black		ctermbg=Grey	cterm=bold
" hi	StatusLineNC	ctermfg=Black		ctermbg=Grey	cterm=NONE
" hi	LineNr			ctermfg=DarkCyan
" hi	Search			ctermfg=White		ctermbg=Magenta	cterm=NONE
" hi	IncSearch		ctermfg=Black		ctermbg=Yellow	cterm=NONE
" hi	WarningMsg		ctermfg=White		ctermbg=Blue
" 
" hi	String		ctermfg=Magenta
" hi	MatchParen	ctermbg=NONE						cterm=bold
" hi	Comment     ctermfg=DarkGreen
" hi	Type		ctermfg=Blue
" hi	Number		ctermfg=Red
" hi	Operator	ctermfg=DarkRed
" hi	Statement	ctermfg=NONE
" hi	Identifier	ctermfg=DarkBlue
" hi	Macro		ctermfg=NONE
" hi	PreProc		ctermfg=DarkGrey
" 
" hi	vimCommand	ctermfg=Blue
" 
" hi	htmlString	ctermfg=Blue
" hi	htmlTag		ctermfg=Blue
" hi	htmlEndTag	ctermfg=Blue
" hi	htmlTagName	ctermfg=DarkRed
" hi	htmlArg		ctermfg=Red
" 
" hi	phpRegionDelimiter	ctermfg=Black	ctermbg=Yellow
" hi	phpDefine			ctermfg=Blue
" hi	phpVarSelector		ctermfg=Blue

" autocmd VimEnter * verbose highlight gitcommitSummary
" autocmd BufEnter,BufWinEnter,WinEnter * verbose highlight gitcommitSummary
