""
"" Janus setup
""

" Define paths
let g:janus_path = escape(fnamemodify(resolve(expand("<sfile>:p")), ":h"), ' ')
let g:janus_vim_path = escape(fnamemodify(resolve(expand("<sfile>:p" . "vim")), ":h"), ' ')
let g:janus_custom_path = expand("~/.janus")

" Source janus's core
exe 'source ' . g:janus_vim_path . '/core/before/plugin/janus.vim'

" You should note that groups will be processed by Pathogen in reverse
" order they were added.
call janus#add_group("tools")
call janus#add_group("langs")
call janus#add_group("colors")

""
"" Customisations
""

if filereadable(expand("~/.vimrc.before"))
  source ~/.vimrc.before
endif

""
"" Pathogen setup
""

" Load all groups, custom dir, and janus core
call janus#load_pathogen()

" .vimrc.after is loaded after the plugins have loaded

execute pathogen#infect()
syntax on
filetype plugin indent on


" Give a shortcut key to NERD Tree
" map <F2> :NERDTreeToggle<CR>

" Use mouse
set mouse=a
map , \

" Map window movement
noremap H <C-w>h
noremap J <C-w>j
noremap K <C-w>k
noremap L <C-w>l

" Render Partial
noremap <C-H> :Rextract 

nnoremap <F2> :set invpaste paste?<CR>
set pastetoggle=<F2>
set showmode

:set wrap


