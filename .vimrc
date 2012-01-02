if &t_Co > 1
   syntax enable
endif

highlight ExtraWhitespace ctermbg=red guibg=red
autocmd ColorScheme * highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/

highlight LineTooLong cterm=bold ctermbg=red guibg=LightYellow
autocmd ColorScheme * highlight LineTooLong cterm=bold ctermbg=red guibg=LightYellow
"match LineTooLong /\%>80v.\+/
au BufWinEnter *.py let w:m2=matchadd('LineTooLong', '\%>80v.\+', -1)

au BufNewFile,BufRead *.mustache  setf mustache

" colorscheme darkblue

" игнорировать регистр при поиске
set ic

" подсвечивать поиск
set hls
" использовать инкрементальный поиск
set is

set ts=4
set shiftwidth=4
set expandtab

set numberwidth=5
set number
":hi LineNr guifg=white guibg=darkgreen
":hi LineNr ctermfg=white ctermbg=darkgreen
:hi LineNr guibg=black
:hi LineNr ctermbg=black 

"source /usr/share/vim/addons/ftplugin/python_bike.vim
source ~/.vim/ftplugin/python_editing.vim
source /usr/share/vim-scripts/indent/python.vim

" make buffers hidden rather than inactive
set hidden

" Uncomment the following to have Vim load indentation rules according to the
" detected filetype. Per default Debian Vim only load filetype specific
" plugins.
if has("autocmd")
  filetype indent on
endif

" The following are commented out as they cause vim to behave a lot
" differently from regular Vi. They are highly recommended though.
set showcmd		" Show (partial) command in status line.
set showmatch		" Show matching brackets.
"set smartcase		" Do smart case matching
"set autowrite		" Automatically save before commands like :next and :make

set modeline

set guifont=Monospace\ 9

" --------------------
" ShowMarks
" --------------------
let showmarks_include = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"
let g:showmarks_enable = 1
" For marks a-z
highlight ShowMarksHLl gui=bold guibg=LightBlue guifg=Blue
" For marks A-Z
highlight ShowMarksHLu gui=bold guibg=LightRed guifg=DarkRed
" For all other marks
highlight ShowMarksHLo gui=bold guibg=LightYellow guifg=DarkYellow
" For multiple marks on the same line.
highlight ShowMarksHLm gui=bold guibg=LightGreen guifg=DarkGreen


" NERD Tree
let NERDTreeIgnore=['\.vim$', '\~$', '\.pyc$']
let NERDTreeShowBookmarks=1
map <F3> :NERDTreeToggle<CR>

map <F7> :Grep 
let Grep_Skip_Files = '*.bak *~ *.pyc' 
let Grep_Skip_Dirs = 'debian'
let Grep_Default_Options = '-r' 
