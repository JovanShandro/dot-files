" --------------GENERAL SETUP---------------
" make using tabs becomes even more convenient.
map <C-m>h :tabp<cr>
map <C-m>l :tabn<cr>
map <C-t> :tabnew<cr>

" Reload neovim
nnoremap <leader>rv :source ~/.config/nvim/init.vim<CR>

set clipboard-=autoselect
set number
set relativenumber
set laststatus=2
" Disable the default Vim startup message.
set shortmess+=I 
set backspace=indent,eol,start
set hidden
" Make search case insensitive unless capital letter entered
set ignorecase 
set smartcase
" Enable searching as you type, rather than waiting till you press enter.
set incsearch 
nmap Q <Nop> 
" Disable audible bell because it's annoying.
set noerrorbells visualbell t_vb= 
" Turn on syntax highlighting.
syntax on 
" Enable mouse support. 
set mouse+=a
set smarttab
set cindent
set tabstop=2
set shiftwidth=2
" Always uses spaces instead of tab characters
set expandtab
set updatetime=300
" don't give |ins-completion-menu| messages.
set shortmess+=c
" always show signcolumns
set signcolumn=yes
" For syntax completion
filetype plugin on
set omnifunc=syntaxcomplete#Complete
" Remove swap file c-z command
map <C-z> ;

" Swap c-j c-k with up down arrow keys
inoremap <expr> <C-j> pumvisible() ? "\<C-n>" : "\<C-j>"
inoremap <expr> <C-k> pumvisible() ? "\<C-p>" : "\<C-k>"

nnoremap <C-y> ggVG


" YANK TO CLIPBOARD
function! <SID>Yank(type, ...)
    let sel_save = &selection
    let &selection = 'inclusive'
    let reg_save = @@

    if a:0  " Invoked from Visual mode, use '< and '> marks.
        silent exe 'normal! `<'.a:type."`>\"+y"
    elseif a:type == 'line'
        silent exe "normal! '[V']\"+y"
    elseif a:type == 'block'
        silent exe "normal! `[\<C-V>`]\"+y"
    else
        silent exe "normal! `[v`]\"+y"
    endif
    let @* = @+

    let &selection = sel_save
endfunction

nnoremap <silent> gy :<C-u>set opfunc=<SID>Yank<CR>g@
nnoremap <silent> gyy "+yy:<C-u>let @*=@+<CR>:let @"=@+<CR>
nnoremap <silent> gY "+y$:<C-u>let @*=@+<CR>:let @"=@+<CR>
xnoremap <silent> gy "+y:<C-u>let @*=@+<CR>:let @"=@+<CR>
nnoremap yC :<C-u>let @+=@"<CR>:let @*=@+<CR>:echo 'Copied default register to clipboard'<CR>
nnoremap ycc :<C-u>let @+=@"<CR>:let @*=@+<CR>:echo 'Copied default register to clipboard'<CR>

" copy file name of current buffer to clipboard
nnoremap ycL :<C-u>let @"=expand('%:p').':'.line('.')<CR>:echo 'Copied filname to default register: '.expand('%:p').':'.line('.')<CR>
nnoremap ycF :<C-u>let @"=expand('%:p')<CR>:echo 'Copied filname to default register: '.expand('%:p')<CR>
nnoremap ycl :<C-u>let @"=expand('%:t').':'.line('.')<CR>:echo 'Copied filname to default register: '.expand('%:t').':'.line('.')<CR>
nnoremap ycf :<C-u>let @"=expand('%:t')<CR>:echo 'Copied filname to default register: '.expand('%:t')<CR>
nnoremap <Space>y :<C-u>let @"=expand('%:p')<CR>:echo 'Copied filname to default register: '.expand('%:p')<CR>

" fix Y
nnoremap Y y$
