" Load defaults.vim first
unlet! skip_defaults_vim
source $VIMRUNTIME/defaults.vim

" Make the invisible visible
colorscheme default
set mouse=
set softtabstop=0

syntax on
set number
filetype indent on " load filetype-specific indent files
filetype plugin on " load filetype plugins

" Search
set incsearch
set ignorecase
set smartcase

" Tabs
set tabstop=4
set shiftwidth=4

" Autoindent
set smartindent

" autocompletion of commands by pressing tab
set wildmenu

" load builtin plugin matchit.vim
runtime macros/matchit.vim

" Make all file searching check subfolders too
" source: https://www.youtube.com/watch?v=XA2WjJbmmoM
set path+=**


" EXPERIMENTAL

" set <Leader>r command in .pde files to run code in Processing.app
au FileType arduino nnoremap <Leader>r :w<CR>:!osascript -e 'quit app "Processing"' && open -a Processing % && sleep 2 && osascript -e 'tell application "System Events" to keystroke "r" using {command down}'<CR>

" use fold-indent in .pde files
au FileType arduino set foldmethod=indent
au FileType arduino set foldlevel=99

" Undo settings
set undodir=~/.vim/undo

" Set comment syntax highlighting to dark grey instead of default cyan
highlight Comment ctermfg=darkgrey

" read lines from files in Processing, found using ag and fzf
