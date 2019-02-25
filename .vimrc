execute pathogen#infect()
set nocompatible


filetype plugin indent on

syntax on
"let g:solarized_termcolors=256
let g:solarized_termtrans=1
set background=dark
colorscheme solarized
"colorscheme nova
set number
set ruler
set visualbell

set autoindent
set backspace=indent,eol,start
set complete-=i
set smarttab

set wrap
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set noshiftround
autocmd FileType solidity setlocal shiftwidth=4 tabstop=4

set autoread
au CursorHold,CursorHoldI * checktime
au FocusGained,BufEnter * :checktime

set cursorline

noremap <C-j> 5j
noremap <C-k> 5k
noremap <C-h> 5h
noremap <C-l> 5l
noremap <CR> i<CR><ESC>
noremap <Space> i<Space><ESC>l
"save
noremap <Leader><CR> <ESC>:w<CR>
"copy selection to xclip clipboard
noremap <Leader>l :'<,'> w !xclip -selection clipboard <CR>
"nerd toggle
noremap <Leader>n :NERDTreeToggle <CR>
"tagbar
noremap <Leader>k :TagbarToggle <CR>
"leave insert
imap <Leader>; <ESC>
"autocomplete
imap <Leader>p <C-p>

set pastetoggle=<F10>
set tags=./tags;

let g:airline_theme='solarized'
packadd! matchit

set mouse=a

"autocmd BufNewFile,BufRead *.handlebars\|*.hbs set syntax=html

if has("mouse_sgr")
  set ttymouse=sgr
else
  set ttymouse=xterm2
end

"ctrl-p
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git'
let g:ctrlp_max_files=0

"vim-easy-align
xmap ga <Plug>(EasyAlign)
nmap ga <Plug>(EasyAlign)

"vim-syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_javascript_checkers = ['eslint']
"let g:syntastic_javascript_eslint_exe = 'npm run lint --'
let g:syntastic_solidity_checkers = ['solhint']
