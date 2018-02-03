source ~/.config/nvim/plugins.vim

"" colorscheem
colorscheme slate

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

"undofile
set undofile
set undodir=~/.local/share/nvim/undo

""stfu vim, i don't care if i 'crashed' or have multiple instances
""it's 2015 god damn it, editing shit simultaneously and corrupting files is normal
set shortmess+=A

""show me the numbers
set number

"make commands easier to input
map ; :

"reaching for esc is hard
imap kj <Esc>

"rebind ex mode to replay q macro
map Q @q

"map ' to \ since i dont use it either
"i like having two keys bound to the same thing
map ' \
map <space> \

"make changing panes easier
map <leader>o <C-W><C-W>
map `o <C-W><C-W>

"closing easier
map <leader>q :q<cr>

"want some familiar keybindings
map <leader>n :NERDTreeToggle<cr>
map <C-P> :FZF <cr>
map <leader>/ :Ack 
map <leader>gb :Gblame<cr>
map <leader>gd :Gdiff<cr>

"make opening splits easy
map <leader>v :vsplit<cr><C-W><C-W>
map <leader>s :split<cr><C-W><C-W>
map <leader>z :ZoomWin<cr><C-W><C-W>
map <leader>u :MundoToggle<cr><C-W><C-W>
map <leader>b :BuffergatorToggle<cr><C-W><C-W>

"psc-ide-vim help tags
helptags ~/.local/share/nvim/plugged/psc-ide-vim/doc

"add any local configs that need to be added, if they exist
if filereadable(glob("~/.vimrc.local"))
  source ~/.vimrc.local
endif

"fucking nerdtree
let NERDTreeShowHidden=1
let NERDTreeDirArrowExpandable = '+'
let NERDTreeDirArrowCollapsible = '-'

"Ackvim use rg
if executable('rg')
  let g:ackprg = 'rg --vimgrep'
endif
