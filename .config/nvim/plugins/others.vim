" ------------FZF------------
let g:fzf_preview_window = ['right:50%', 'ctrl-/']
nnoremap <leader>f :Files<CR>

" ------------SYNTASTIC-------------
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_typescript_checkers = ['eslint']


" ----------------SNIPPETS---------------- 
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-i>"
let g:UltiSnipsJumpBackwardTrigger="<c-u>"
let g:UltiSnipsEditSplit="vertical"

" ------------MARKDOWN PREVIEW------------
nmap <C-s> <Plug>MarkdownPreviewToggle

" ----------------EMMET----------------
let g:user_emmet_expandabbr_key = '<C-a>,'
let g:user_emmet_settings = {
                  \  'javascript' : {
                  \      'extends' : 'jsx',
                  \  },
                  \}

" ------------COLORSCHEME-------------
colorscheme codedark

" ------------TELESCOPE-------------
nnoremap <C-s> :Telescope find_files<CR>

" ------------EMOJIS-------------
set completefunc=emoji#complete
nnoremap <silent><Leader>e :s/:\([^:]\+\):/\=emoji#for(submatch(1), submatch(0))/g<CR>:noh<CR>

