let g:polyglot_disabled = ['coffee-script']
call plug#begin('~/local/share/nvim/stable/plugged')

" Emojis
Plug 'junegunn/vim-emoji'
" Color picker
Plug 'KabbAmine/vCoolor.vim'
" one-liner to multiple and vice-versa
Plug 'AndrewRadev/splitjoin.vim'
" Start screen
Plug 'mhinz/vim-startify'
" Rest calls
Plug 'diepm/vim-rest-console'
" Eslint
Plug 'vim-syntastic/syntastic'
" Mardown preview
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install'  }
" Ack search tool
Plug 'mileszs/ack.vim'
" Rainbow brackets
Plug 'frazrepo/vim-rainbow'
" Vim snippets
Plug 'SirVer/ultisnips' 
Plug 'honza/vim-snippets'
Plug 'JovanShandro/vim-react-snippets'
" Unix shell commands
Plug 'tpope/vim-eunuch'
" Graphql synt high
Plug 'jparise/vim-graphql'
" Git
Plug 'tpope/vim-fugitive'
Plug 'junegunn/gv.vim'
" Telescope 
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
" Surrounding
Plug 'tpope/vim-surround'
" For fixing nerdcommenter
Plug 'posva/vim-vue'
" Nerd Tree
Plug 'scrooloose/nerdtree'
Plug 'ryanoasis/vim-devicons'
Plug 'scrooloose/nerdcommenter'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
" Syntax highliting for many langs
Plug 'sheerun/vim-polyglot'
" Intellisense
Plug 'neoclide/coc.nvim', {'branch': 'release'}
"Auto close tag
Plug 'alvan/vim-closetag'
" Change info line in bottom section
Plug 'bling/vim-airline'
" Can use ul>li*>a
Plug 'mattn/emmet-vim'
" For navigation between panes
Plug 'christoomey/vim-tmux-navigator'
" Ts syntax highlighter
Plug 'HerringtonDarkholme/yats.vim' " TS Syntax
" Color scheme
Plug 'tomasiser/vim-code-dark'
call plug#end()

let $NVIM_CONFIG_DIR = expand('$HOME/.config/nvim')

source $NVIM_CONFIG_DIR/general.vim
source $NVIM_CONFIG_DIR/plugins/close_tags.vim
source $NVIM_CONFIG_DIR/plugins/nerdtree.vim
source $NVIM_CONFIG_DIR/plugins/others.vim
source $NVIM_CONFIG_DIR/plugins/coc.vim
source $NVIM_CONFIG_DIR/plugins/others.vim
