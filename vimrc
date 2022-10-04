" Load defaults.vim
unlet! skip_defaults_vim
source $VIMRUNTIME/defaults.vim

" Make the invisible visible
colorscheme default
set softtabstop=0
set mouse=

syntax on
set number
filetype indent on " load filetype-specific indent files

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

" Markdown filetype plugin
filetype plugin on


" EXPERIMENTAL

" Enable vim-fzf
set rtp+=/opt/homebrew/opt/fzf

" set <Leader>r command in .pde files to run code in Processing.app
au FileType arduino nnoremap <Leader>r :w<CR>:!osascript -e 'quit app "Processing"' && open -a Processing % && sleep 2 && osascript -e 'tell application "System Events" to keystroke "r" using {command down}'<CR>

" use fold-indent in .pde files
au FileType arduino set foldmethod=indent
