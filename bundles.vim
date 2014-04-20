if has('vim_starting')
	set nocompatible               " Be iMproved

	" Required:
	set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

" Required:
call neobundle#rc(expand('~/.vim/bundle/'))

call neobundle#rc()

" Github: Use the path ('user/repository')
" vim.org: Use last portion of URL ('matchit.zip')
" Any old URL: git://git.wincent.com/command-t.git
" Local machine: file:///home/user/path/to/plugin

" If plugin is in subfolder, add , {'rtp': 'path/to/plugin'}

" let NeaBundle manage NeaBundle, required
NeoBundleFetch 'Shougo/neobundle.vim'

" Keep bundle commands between here and filetype plugin indent on.
"
""" Utilities
" A Vim plugin providing text objects for the closest pairs of quotes of any type
"NeoBundle 'beloglazov/vim-textobj-quotes'
" lean & mean status/tabline for vim that's light as air
NeoBundle 'bling/vim-airline'
" Make gvim-only colorschemes work transparently in terminal vim
NeoBundle 'godlygeek/csapprox'

" BufExplorer Plugin for Vim
NeoBundle 'jlanzarotta/bufexplorer'
" provides insert mode auto-completion for quotes, parens, brackets, etc.
NeoBundle 'Raimondi/delimitMate'
" extended % matching for HTML, LaTeX, and many other languages
NeoBundle 'matchit.zip'
" Vim plugin for intensely orgasmic commenting
NeoBundle 'scrooloose/nerdcommenter'
" Surround
NeoBundle 'tpope/vim-surround'
" True Sublime Text style multiple selections for Vim
NeoBundle 'terryma/vim-multiple-cursors'
" Fuzzy file, buffer, mru, tag, etc finder.
NeoBundle 'kien/ctrlp.vim'
NeoBundle 'tacahiroy/ctrlp-funky'
" A Filetype plugin for csv files
NeoBundle 'chrisbra/csv.vim'
" Display your undo history in a graph.
NeoBundle 'mbbill/undotree'

if has('python')
	" Swap parameters of a function or a comma separated list with a single command.
	NeoBundle 'mutewinter/swap-parameters'
fi
" Start a * or # search from a visual block
NeoBundle 'nelstrom/vim-visual-star-search'
" automatically try to detect the kind of indentation in your file and set Vim's options to keep it that way.
NeoBundle 'yaifa.vim'

" A vim plugin to display the indention levels with thin vertical lines
NeoBundle 'Yggdroot/indentLine'

" A vim plugin that simplifies the transition between multiline and single-line code
NeoBundle 'AndrewRadev/splitjoin.vim'

" The missing motion in vim
NeoBundle 'justinmk/vim-sneak'

" Vim plugin that allows you to visually select increasingly larger regions of text using the same key combination.
NeoBundle 'terryma/vim-expand-region'

" Interactive command execution in Vim.
NeoBundle 'Shougo/vimproc', {
		\ 'build' : {
			\ 'windows' : 'make -f make_mingw32.mak',
			\ 'cygwin' : 'make -f make_cygwin.mak',
			\ 'mac' : 'make -f make_mac.mak',
			\ 'unix' : 'make -f make_unix.mak',
		\ },
	\ }

" A fast, extensible, context aware autocomplete plugin for PHP composer projects with code inspection features.
NeoBundle 'm2mdas/phpcomplete-extended'

""" Indenting
" PHP Indenting
NeoBundle '2072/PHP-Indenting-for-VIm'

""" Syntax 
NeoBundle 'elzr/vim-json'
NeoBundle 'pangloss/vim-javascript'
NeoBundle 'jelera/vim-javascript-syntax'
NeoBundle 'xsbeats/vim-blade'
" Syntax checking hacks for vim
NeoBundle 'scrooloose/syntastic'
" Markdown runtime files
NeoBundle 'tpope/vim-markdown'

filetype plugin indent on     " required

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck

"
" Brief help
" :BundleList          - list configured bundles
" :BundleInstall(!)    - install (update) bundles
" :BundleSearch(!) foo - search (or refresh cache first) for foo
" :BundleClean(!)      - confirm (or auto-approve) removal of unused bundles
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Bundle commands are not allowed.
