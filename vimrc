set t_Co=256 " Sets terminal to use 256 colors for CSApprox

source ~/.vim/bundles.vim

colorscheme dante2
source ~/.vim/idx.vim
" set commands {{{
"set fo-=t fo-=o fo-=r " don't continue comments after singline line comments or when using oO, also don't wrap text
set cmdheight=2 " Number of screen lines to use for the ocmmand-line
set backspace=indent,eol,start " places <bs> and co. work
set ruler " Show line number in bottom-right of screen
set nowrap " Don't wrap long lines (soft wrap)
set wmh=0 " Minimum split window height
set wmw=0 " Minimum split window width
set ic " search ignores case
set scs " search pays attention to case if pattern contains uppercase char
set showcmd " display an incomplete command in the lower right corner of the vim window
set whichwrap+=[,],<,> " cursor keys will wrap around lines when beginning or end of line is reached.
set nohls " no highlighting when searching
set foldopen-=block " don't open folds for block movements (like { } [ ] etc)
set nolz " no lazy redraw
set autochdir " Always cd to the current file's directory
set wildmenu " enhanced command-line completion
set nrformats=hex " allow us to increment hex numbers via  and 
set hidden " enable undo history for when you switch buffers from one file to another. 
set scrollopt=ver,hor,jump " For when two windows are scroll-binded (as in Diff mode)
set diffopt=filler,iwhite " Show filler lines, ignore whitesapce.
set gdefault " s// has the g flag enabled by default, add g to disable.
set sidescrolloff=10 " leave some chars next to window edge (w/ nowrap)
set scrolloff=1 " Always have at least one line above or below the cursor.
set foldmethod=marker
set foldlevelstart=99 " Default to folds open
set wildignore+=*.svn,vendor " Ignore .svn directories and composer vendor directory for file completion and such.
set textwidth=115 " Maximum width of text that is being inserted
set laststatus=2
"set spell " Turn on spell checking
set spelllang=en_us " Define the region for spell checking
set spellfile=~/.vim/spell/en.utf-8.add
set sps+=10 " Limit the number of suggestions shown to 10.

" Options that require version 7.4 or higher.
if v:version > 740
	set fo+=j " Where it makes sense, remove a comment leader when joining lines.
endif
if has("persistent_undo")
	set undofile
	set undodir=$HOME/.vim/undodir/
endif

" }}}

" variables {{{

" Ctrl-P settings
" Ignore .git and .svn directories, the vendor folder, .csv and .log files
let g:ctrlp_custom_ignore = {
	\ 'dir': '\v(^\/vendor|\/\.(git|svn)$)',
	\ }
" Set the root marker to 'vendor' (this is how it knows what the root of the project is
let g:ctrlp_root_markers = [ 'vendor' ]
" Set the max-height
let g:ctrlp_match_window = 'max:20'
let g:ctrlp_extensions = ['funky']
let g:ctrlp_funky_syntax_highlight = 1

" delimitMate
let g:delimitMate_expand_cr = 2 " Move the closing delimiter to the next line after hitting <cr>
let g:delimitMate_expand_space = 2 " Insert a space before and after the cursor when a space is typed immediately after the opening delimiter
let g:delimitMate_jump_expansion = 1 " Jump to after closing delimiter

" airline options
let g:airline_left_sep = '»'
let g:airline_right_sep = '«'
let g:airline#extensions#branch#use_vcscommand = 1 " Use VCSCommand for branch info when applicable
let g:airline#extensions#csv#column_display = 'Name'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#show_buffers = 0
let g:airline#extensions#tabline#tab_nr_type = 1 " tab number
"let g:airline#extensions#tabline#buffer_nr_show = 1
let g:airline#extensions#tabline#formatter = 'unique_tail_improved'
let g:airline#extensions#tabline#close_symbol = ''
let g:airline#extensions#whitespace#checks = [ 'indent' ]

" phpcomplete options
let g:phpcomplete_index_composer_command = 'composer'

" NERDComment options
let NERDSpaceDelims = 1

" set php syntax options
" EVERY string is treated as a possible mysql query and formatted as such, so this is not a good option.
let php_sql_query = 0 " Don't highlight SQL in strings.
let php_sql_heredoc = 1 " Highlight HEREDOCs that have 'SQL' in the name highlight as SQL, defaults to 1
let php_html_in_strings = 0 " No highlighting HTML in strings, defaults to 0
let php_html_in_heredoc = 1 " No highlighting HTML in HEREDOCs, defaults to 1
let php_html_load = 1 " Don't load the HTML syntax at all.  Turns off previous two options and highlighting between ?> and <?php
let php_parent_error_close = 1 " Highlight parent error ] or )
let php_folding = 0 " Fold loops, if/elseif/else, switch, try/catch/finally, and functions based on indent level

" php indent options
let PHP_removeCRwhenUnix = 1
let PHP_autoformatcomment = 0
let PHP_default_indenting = 0
let PHP_vintage_case_default_indent = 1

" ft-csv options
let g:csv_highlight_column = 'y'

" indentLine options
let g:indentLine_char='¦'
let g:indentLine_color_term=236
let g:indentLine_noConcealCursor = 1

" Swap parameters options
let g:SwapParametersMapForwards = '<leader>s'
let g:SwapParametersMapBackwards = '<leader>S'

" }}}

" mappings {{{
" note, it is only possible to map a limit number of characters to C-
" they are:
" a through z, [, \, ], ^, _, and @.  That's it
map g= :%s/\n\s*{/ {/e<cr>gg=Ggg
nmap du :diffu<cr>
nmap Y y$
vnoremap p <Esc>:let current_reg = @"<CR>gvs<c-r>=current_reg<cr><esc>:let @" = current_reg<cr>
nnoremap <space> za
"vmap <leader>as :s/\%V(\(.\{-}\), \?\(.*\)\%V)/(\2, \1)<cr>
" }}}

" highlight {{{
" Folded lines should not have a background.  Period.
highlight Folded ctermbg=0 ctermfg=7

hi MatchParen ctermbg=242

hi TabLine cterm=NONE ctermbg=240
hi TabLineFill ctermbg=240
hi Pmenu ctermbg=53
hi PmenSel ctermbg=144
" }}}

" au (autocommands) {{{
" Make sure that we haven't already loaded the autocommands in case the vimrc gets sourced twice.  Of course, if
" the autocommands are changed this will require a restart rather than re-source this file.
if !exists("autocommands_loaded")
	let autocommands_loaded = 1

	au FileType html,php,json,javascript set list lcs=tab:\¦\ ,trail:·

	"au BufRead php DBCompleteTable
	au FileType html,xhtml setlocal commentstring=<!--%s-->

	au FileType twig set syntax=jinja
	au FileType php setlocal commentstring=#\ %s
	au FileType php setlocal makeprg=php\ -l\ % errorformat=%m\ in\ %f\ on\ line\ %l
	au FileType php setlocal comments=s1:/*,mb:*,ex:*/,O:#,O:// fo+=roc

	au FileType json setlocal foldmethod=syntax textwidth=0 fo-=t wrap
	au Syntax  json setlocal foldlevelstart=2 foldlevel=2

	au FileType javascript setlocal foldmethod=syntax

endif
" }}}
