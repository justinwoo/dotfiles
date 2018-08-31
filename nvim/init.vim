source ~/.config/nvim/plugins.vim

""set the most obvious netrw style
let g:netrw_liststyle = 3
let g:netrw_winsize = 25

""use the system clipboard
set clipboard=unnamedplus

"asdfsdf
set shiftwidth=2

""god damn
set ignorecase
set smartcase

"undofile
set undofile
set undodir=~/.local/share/nvim/undo

""stfu vim, i don't care if i 'crashed' or have multiple instances
""it's 2015 god damn it, editing shit simultaneously and corrupting files is normal
set shortmess+=A

""show me the relative numbers
set number relativenumber

"make commands easier to input
noremap ; :
noremap , ;

"reaching for esc is hard
imap kj <Esc>

"rebind ex mode to replay q macro
map Q @q

"leader
map <space> <leader>

"make changing panes easier
map <leader>o <C-W><C-W>

"closing easier
map <leader>q :q<cr>

"want some familiar keybindings
map <leader>n :Vexplore<cr>
map <C-P> :FZF <cr>
map <leader>/ :Ack 
map <leader>gb :Gblame<cr>
map <leader>gd :Gdiff<cr>

"make opening splits easy
map <leader>v :vsplit<cr><C-W><C-W>
map <leader>s :split<cr><C-W><C-W>
map <leader>u :MundoToggle<cr><C-W><C-W>
map <leader>b :BuffergatorToggle<cr><C-W><C-W>
map <leader>c :Commentary<cr><C-W><C-W>

"psc-ide-vim help tags
helptags ~/.local/share/nvim/plugged/psc-ide-vim/doc

"add any local configs that need to be added, if they exist
if filereadable(glob("~/.vimrc.local"))
  source ~/.vimrc.local
endif

"Ackvim use rg
if executable('rg')
  let g:ackprg = 'rg --vimgrep'
endif
