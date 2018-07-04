execute pathogen#infect()

set background=dark
colorscheme onedark

" Editing behavior
syntax enable                   " Turn on syntax highlighting
set showmode                    " Always show mode we're currently editing in
set number                      " Always show line numbers
set mouse=a                     " Enable mouse
set autoread                    " Automatically reload files changed outside of Vim
set nowrap                      " Disable line wrapping
set tabstop=4                   " Setting tab to be 4 spaces
set softtabstop=4               " When hitting backspace, pretend like a tab is removed
set autoindent                  " Always set autoindenting on
set copyindent                  " Copy the previous indentation on autoindenting
set showmatch                   " Set show matching parenthesis

" Make the keyboard fast
set ttyfast
set timeout timeoutlen=1000 ttimeoutlen=50

" Editor layout
set title                       " Change the terminal's title

" NERD Tree
autocmd vimenter * NERDTree     " Show NERD Tree
" Close NERD Tree when its the only windows present
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif