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
NeoBundle 'godlygeek/tabular'
" BufExplorer Plugin for Vim
NeoBundle 'jlanzarotta/bufexplorer'
" provides insert mode auto-completion for quotes, parens, brackets, etc.
NeoBundle 'Raimondi/delimitMate'
" extended % matching for HTML, LaTeX, and many other languages
NeoBundle 'matchit.zip'
" Vim plugin for intensely orgasmic commenting
NeoBundle 'scrooloose/nerdcommenter'
" Snipmate
NeoBundle "MarcWeber/vim-addon-mw-utils"
NeoBundle "tomtom/tlib_vim"
NeoBundle "garbas/vim-snipmate"
" Surround
NeoBundle 'tpope/vim-surround'
" CVS/SVN/SVK/git/hg/bzr integration plugin 
NeoBundle 'vcscommand.vim'
" A Git wrapper so awesome, it should be illegal
NeoBundle 'tpope/vim-fugitive'
" A Vim plugin which shows a git diff in the gutter (sign column) and stages/reverts hunks.
NeoBundle 'airblade/vim-gitgutter'
" True Sublime Text style multiple selections for Vim
NeoBundle 'terryma/vim-multiple-cursors'
" Fuzzy file, buffer, mru, tag, etc finder.
NeoBundle 'kien/ctrlp.vim'
NeoBundle 'tacahiroy/ctrlp-funky'
" A Filetype plugin for csv files
NeoBundle 'chrisbra/csv.vim'
" Display your undo history in a graph.
NeoBundle 'mbbill/undotree'
" Swap parameters of a function or a comma separated list with a single command.
NeoBundle 'mutewinter/swap-parameters'
" Start a * or # search from a visual block
NeoBundle 'nelstrom/vim-visual-star-search'
" Show a VCS diff using Vim's sign column.
NeoBundle 'mhinz/vim-signify'
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
			\     'windows' : 'make -f make_mingw32.mak',
			\     'cygwin' : 'make -f make_cygwin.mak',
			\     'mac' : 'make -f make_mac.mak',
			\     'unix' : 'make -f make_unix.mak',
			\    },
			\ }

" Unite and create user interfaces
"NeoBundle 'Shougo/unite.vim'
" MRU plugin includes unite.vim MRU sources
"NeoBundle 'Shougo/neomru.vim'

" ext generation completion framework after neocomplcache
"NeoBundle 'Shougo/neocomplete.vim'
" A code-completion engine for Vim
"NeoBundle 'Valloric/YouCompleteMe', {
"			\ 'build' : {
"			\     'unix' : './install.sh' --clang-completer
"			\    },
"			\ }
" A fast, extensible, context aware autocomplete plugin for PHP composer projects with code inspection features.
NeoBundle 'm2mdas/phpcomplete-extended'
" An extension of phpcomplete-extended autocomplete plugin for laravel projects
NeoBundle 'm2mdas/phpcomplete-extended-laravel'

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

" read in aborted subversion commit log messages
NeoBundle 'svn_commit'

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
