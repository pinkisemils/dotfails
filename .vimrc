set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#rc()
"Plugin 'Rip-Rip/clang_complete'
Plugin 'altercation/vim-colors-solarized'
"Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
Plugin 'scrooloose/nerdtree'
"Plugin 'ervandew/supertab'
"Plugin 'msanders/snipmate.vim'
Plugin 'scrooloose/syntastic' 
Plugin 'Valloric/YouCompleteMe'
Plugin 'chikamichi/mediawiki.vim'
Plugin 'marijnh/tern_for_vim'
Plugin 'majutsushi/tagbar'
Plugin 'xolox/vim-misc'
Plugin 'xolox/vim-easytags'
"Neocomplete
"Plugin 'Shougo/neocomplete.vim'
"SudoEdit
Plugin 'chrisbra/SudoEdit.vim'
Plugin 'zah/nimrod.vim'
Plugin 'rust-lang/rust.vim'
Plugin 'phildawes/racer'
Plugin 'kien/ctrlp.vim'
Plugin 'jiangmiao/auto-pairs'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'vim-scripts/prev_indent'
Plugin 'tpope/vim-fugitive'
Plugin 'python-rope/ropevim'
"plugins must be declared above 
set t_Co=256
filetype plugin indent on
set autoindent
set cindent
syntax enable
set background=dark
colorscheme solarized
inoremap jj <Esc>
set nu
set completeopt =menu,menuone,longest,preview
set pumheight =15
"let g:SuperTabDefaultCompletionType = 'context'
"let g:clang_complete_auto = 1
"let g:clang_complete_copen = 1
let g:syntastoc_cpp_compiler = 'clang++'
let g:syntastic_cpp_compiler_options = ' -std=c++11'
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
"if !exists('g:neocomplete#sources#omni#input_patterns')
"	    let g:neocomplete#force_omni_input_patterns = {}
"    endif
"let g:neocomplete#force_omni_input_patterns.cpp = 
"	\ '[^.[:digit:] *\t]\%(\.\|->\)\w*\|\h\w*::\w*'
set tabstop=8 
set expandtab 
set shiftwidth=4
set softtabstop=4
let g:ycm_autoclose_preview_window_after_insertion=1
let g:ycm_add_preview_to_completeopt=1
nmap <F3> :TagbarToggle<CR>
let g:tagbar_left=1   
let g:tagbar_width=40
let g:tagbar_autofocus=1
"This allows for change paste motion cp{motion}
nmap <silent> cp :set opfunc=ChangePaste<CR>g@
function! ChangePaste(type, ...)
    silent exe "normal! `[v`]\"_c"
    silent exe "normal! p"
endfunction
set rtp+=/usr/share/vim/vimfiles/plugin/powerline.vim
set laststatus=2 
"racer
"doesn't destroy current buffer when gd is called
set hidden
let g:racer_cmd = "/home/dog/rust/racer/target/debug/racer"
"let $RUST_SRC_PATH="`pwd`/src/"
"CTRLP stuff
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/](\.(git|hg|svn)|\_site)$',
  \ 'file': '\v\.(exe|so|dll|class|png|jpg|jpeg)$',
  \}
}
let g:ctrlp_working_path_mode = 'r'
nmap <leader>bb :CtrlPBuffer<cr>
nmap <leader>bm :CtrlPMixed<cr>
nmap <leader>bs :CtrlPMRU<cr>
"IndentGuides
let g:indent_guides_start_level = 2
let g:indent_guides_guide_size  = 1
let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_auto_colors = 0
hi IndentGuidesEven ctermbg=black   
hi IndentGuidesOdd ctermbg=black   
"Rope
let g:ropevim_autoimport_modules = ["os", "shutil"]
let g:ropevim_goto_def_newwin = 1
"binds RopeRename<CR> to <leader>r
map <leader>r :RopeRename<CR>
map <leader>g :RopeGotoDefinition<CR>
"remove unwanted whitespace
:nnoremap <silent> <F6> :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar>:nohl<CR>
set scrolloff=10
"Nerdtree toggle with leader+n
map <leader>n :NERDTreeToggle<CR>

