set nocompatible              " be iMproved, required
filetype off                  " required

" show a menu when using tab completion
set wildmenu
" show line numbers
set number relativenumber
"set relativenumber
set laststatus=2
" show incomplete commands
set showcmd
" z+enter puts to the top of the screen, this value defines the offset
set scrolloff=5

set ruler

set hlsearch
set incsearch
set ignorecase
set smartcase
set backspace=indent,eol,start

" sets auto indent
set ai
" smart indent
set si

" yank to clipboard
if has("clipboard")
  set clipboard=unnamed " copy to the system clipboard

  if has("unnamedplus") " X11 support
    set clipboard+=unnamedplus
  endif
endif

" begin plugin section
" -------------------------------------------------------------------------------
" Load vim-plug
if empty(glob("~/.vim/autoload/plug.vim"))
    execute '!curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.github.com/junegunn/vim-plug/master/plug.vim'
endif

call plug#begin()

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plug 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
Plug 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plug 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}

" Plugins which where added by me
" 
Plug 'tpope/vim-surround'

" Comment stuff out. Use gcc to comment out a line (takes a count), 
" gc to comment out the target of a motion (for example, gcap to comment out a paragraph), 
" gc in visual mode to comment out the selection, and gc in operator pending mode to target a comment. 
" You can also use it as a command, either with a range like :7,17Commentary, or as part of a :global invocation like with :g/TODO/Commentary. That's it.
Plug 'tpope/vim-commentary'

" System copy provides a mapping to copy to the system clipboard using a motion or visual selection. It also provides a mapping for pasting from the system clipboard.
" The default mapping is cp, and can be followed by any motion or text object. For instance:
"    cpiw => copy word into system clipboard
"    cpi' => copy inside single quotes to system clipboard
"In addition, cP is mapped to copy the current line directly.
"The sequence cv is mapped to paste the content of system clipboard to the next line.
Plug 'christoomey/vim-system-copy'

" A light and configurable statusline/tabline plugin for Vim
Plug 'itchyny/lightline.vim'

call plug#end()
