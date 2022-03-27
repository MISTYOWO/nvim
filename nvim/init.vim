call plug#begin('~/.vim/plugged')
Plug 'sainnhe/gruvbox-material'
Plug 'ellisonleao/gruvbox.nvim'

" ========= appearence here. ==========

Plug 'nvim-lualine/lualine.nvim'
" Plug 'feline-nvim/feline.nvim'
Plug 'xiyaowong/nvim-transparent'
" Plug 'junegunn/goyo.vim'
Plug 'gelguy/wilder.nvim', { 'do': ':UpdateRemotePlugins' }
" welcome page
" Plug 'mhinz/vim-startify'
" dashboard
Plug 'goolord/alpha-nvim'
" Speed up Neovim.
Plug 'lewis6991/impatient.nvim'

Plug 'Yggdroot/indentLine'
Plug 'vim-airline/vim-airline'       
Plug 'vim-airline/vim-airline-themes' "airline ÁöÑ‰∏ªÈ¢ò
Plug 'scrooloose/nerdcommenter'
Plug 'luochen1990/rainbow'
Plug 'preservim/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'majutsushi/tagbar'
Plug 'octol/vim-cpp-enhanced-highlight'
Plug 'honza/vim-snippets'
"Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'vim-scripts/AutoComplPop'
Plug 'kien/ctrlp.vim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'ayu-theme/ayu-vim' " or other package manager
Plug 'easymotion/vim-easymotion'
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
call plug#end()
let g:indent_guides_guide_size            = 1  " ÊåáÂÆöÂØπÈΩêÁ∫øÁöÑÂ∞∫ÂØ∏
let g:indent_guides_start_level           = 2  " ‰ªéÁ¨¨‰∫åÂ±ÇÂºÄÂßãÂèØËßÜÂåñÊòæÁ§∫Áº©Ëøõ

" ËÆæÁΩÆÁä∂ÊÄÅÊ†è
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#buffer_nr_show = 0
let g:airline#extensions#tabline#formatter = 'default'
let g:airline_theme = 'desertink'  " ‰∏ªÈ¢ò
let g:airline#extensions#keymap#enabled = 1
let g:airline#extensions#tabline#buffer_idx_mode = 1
let g:airline#extensions#tabline#buffer_idx_format = {
       \ '0': '0 ',
       \ '1': '1 ',
       \ '2': '2 ',
       \ '3': '3 ',
       \ '4': '4 ',
       \ '5': '5 ',
       \ '6': '6 ',
       \ '7': '7 ',
       \ '8': '8 ',
       \ '9': '9 '
       \}
" ËÆæÁΩÆÂàáÊç¢tabÁöÑÂø´Êç∑ÈîÆ <\> + <i> ÂàáÊç¢Âà∞Á¨¨i‰∏™ tab
nmap <leader>1 <Plug>AirlineSelectTab1
nmap <leader>2 <Plug>AirlineSelectTab2
nmap <leader>3 <Plug>AirlineSelectTab3
nmap <leader>4 <Plug>AirlineSelectTab4
nmap <leader>5 <Plug>AirlineSelectTab5
nmap <leader>6 <Plug>AirlineSelectTab6
nmap <leader>7 <Plug>AirlineSelectTab7
nmap <leader>8 <Plug>AirlineSelectTab8
nmap <leader>9 <Plug>AirlineSelectTab9
" ËÆæÁΩÆÂàáÊç¢tabÁöÑÂø´Êç∑ÈîÆ <\> + <-> ÂàáÊç¢Âà∞Ââç‰∏Ä‰∏™ tab
nmap <leader>- <Plug>AirlineSelectPrevTab
" ËÆæÁΩÆÂàáÊç¢tabÁöÑÂø´Êç∑ÈîÆ <\> + <+> ÂàáÊç¢Âà∞Âêé‰∏Ä‰∏™ tab
nmap <leader>+ <Plug>AirlineSelectNextTab
" ËÆæÁΩÆÂàáÊç¢tabÁöÑÂø´Êç∑ÈîÆ <\> + <q> ÈÄÄÂá∫ÂΩìÂâçÁöÑ tab
nmap <leader>q :bp<cr>:bd #<cr>
" <Leader>f{char} to move to {char}
map  <Leader>f <Plug>(easymotion-bd-f)
nmap <Leader>f <Plug>(easymotion-overwin-f)

" s{char}{char} to move to {char}{char}
nmap <Leader>s <Plug>(easymotion-overwin-f2)

" Move to line
map <Leader>l <Plug>(easymotion-bd-jk)
nmap <Leader>l <Plug>(easymotion-overwin-line)

" Move to word
map  <Leader>w <Plug>(easymotion-bd-w)
nmap <Leader>w <Plug>(easymotion-overwin-w)
" ‰øÆÊîπ‰∫Ü‰∏Ä‰∫õ‰∏™‰∫∫‰∏çÂñúÊ¨¢ÁöÑÂ≠óÁ¨¶
if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif
let g:airline_symbols.linenr = "CL" " current line
let g:airline_symbols.whitespace = '|'
let g:airline_symbols.maxlinenr = 'Ml' "maxline
let g:airline_symbols.branch = 'BR'
let g:airline_symbols.readonly = "RO"
let g:airline_symbols.dirty = "DT"
let g:airline_symbols.crypt = "CR" 
"add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1
" python Ëá™Âä®ÁöÑ‰ºöÂ§öÂä†‰∏Ä‰∏™Á©∫Ê†º
au FileType python let g:NERDSpaceDelims = 0
 
" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1
 
" Align line-wise comment delimiters flush left instead of following code indentation
let g:NERDDefaultAlign = 'left'
 
" Set a language to use its alternate delimiters by default
let g:NERDAltDelims_java = 1
 
" Add your own custom formats or override the defaults
" let g:NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/' } }
 
" Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDCommentEmptyLines = 1
 
" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1
 
" Enable NERDCommenterToggle to check all selected lines is commented or not
let g:NERDToggleCheckAllLines = 1
let g:rainbow_active = 1
let g:rainbow_conf = {
\   'guifgs': ['darkorange3', 'seagreen3', 'royalblue3', 'firebrick'],
\   'ctermfgs': ['lightyellow', 'lightcyan','lightblue', 'lightmagenta'],
\   'operators': '_,_',
\   'parentheses': ['start=/(/ end=/)/ fold', 'start=/\[/ end=/\]/ fold', 'start=/{/ end=/}/ fold'],
\   'separately': {
\       '*': {},
\       'tex': {
\           'parentheses': ['start=/(/ end=/)/', 'start=/\[/ end=/\]/'],
\       },
\       'lisp': {
\           'guifgs': ['darkorange3', 'seagreen3', 'royalblue3', 'firebrick'],
\       },
\       'vim': {
\           'parentheses': ['start=/(/ end=/)/', 'start=/\[/ end=/\]/', 'start=/{/ end=/}/ fold', 'start=/(/ end=/)/ containedin=vimFuncBody', 'start=/\[/ end=/\]/ containedin=vimFuncBody', 'start=/{/ end=/}/ fold containedin=vimFuncBody'],
\       },
\       'html': {
\           'parentheses': ['start=/\v\<((area|base|br|col|embed|hr|img|input|keygen|link|menuitem|meta|param|source|track|wbr)[ >])@!\z([-_:a-zA-Z0-9]+)(\s+[-_:a-zA-Z0-9]+(\=("[^"]*"|'."'".'[^'."'".']*'."'".'|[^ '."'".'"><=`]*))?)*\>/ end=#</\z1># fold'],
\       },
\       'css': 0,
\   }
\}
" autocmd vimenter * NERDTree  "Ëá™Âä®ÂºÄÂêØNerdtree
let g:NERDTreeWinSize = 25 "ËÆæÂÆö NERDTree ËßÜÁ™óÂ§ßÂ∞è
let NERDTreeShowBookmarks=1  " ÂºÄÂêØNerdtreeÊó∂Ëá™Âä®ÊòæÁ§∫Bookmarks
"ÊâìÂºÄvimÊó∂Â¶ÇÊûúÊ≤°ÊúâÊñá‰ª∂Ëá™Âä®ÊâìÂºÄNERDTree
" autocmd vimenter * if !argc()|NERDTree|endif
"ÂΩìNERDTree‰∏∫Ââ©‰∏ãÁöÑÂîØ‰∏ÄÁ™óÂè£Êó∂Ëá™Âä®ÂÖ≥Èó≠
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
" ËÆæÁΩÆÊ†ëÁöÑÊòæÁ§∫ÂõæÊ†á
let g:NERDTreeDirArrowExpandable = '+'
let g:NERDTreeDirArrowCollapsible = '-'
let NERDTreeIgnore = ['\.pyc$']  " ËøáÊª§ÊâÄÊúâ.pycÊñá‰ª∂‰∏çÊòæÁ§∫
let g:NERDTreeShowLineNumbers=0 " ÊòØÂê¶ÊòæÁ§∫Ë°åÂè∑
let g:NERDTreeHidden=0     "‰∏çÊòæÁ§∫ÈöêËóèÊñá‰ª∂
""Making it prettier
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1
nnoremap <F3> :NERDTreeToggle<CR> " ÂºÄÂêØ/ÂÖ≥Èó≠nerdtreeÂø´Êç∑ÈîÆ
let g:tagbar_width=30
nnoremap <silent> <F4> :TagbarToggle<CR> " Â∞ÜtagbarÁöÑÂºÄÂÖ≥ÊåâÈîÆËÆæÁΩÆ‰∏∫ F4
" if hidden is not set, TextEdit might fail.
set hidden
" Some servers have issues with backup files, see #649
set nobackup
set nowritebackup
 
" You will have bad experience for diagnostic messages when it's default 4000.
set updatetime=300
 
" don't give |ins-completion-menu| messages.
set shortmess+=c
 
" always show signcolumns
set signcolumn=yes

inoremap <expr> <Down> pumvisible() ? "<C-n>" : "<Down>"
inoremap <expr> <Up> pumvisible() ? "<C-p>" : "<Up>"
 
inoremap <expr> <Right> pumvisible() ? "<C-y>" : "<Right>"
inoremap <expr> <CR> pumvisible() ? "<C-y>" : "<CR>"

inoremap <expr> <Left> pumvisible() ? "<C-e>" : "<Left>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction
 
 

" Use K to show documentation in preview window
nnoremap <silent> K :call <SID>show_documentation()<CR>
 
"function! s:show_documentation()
"  if (index(['vim','help'], &filetype) >= 0)
"    execute 'h '.expand('<cword>')
"  else
"    call CocAction('doHover')
"  endif
"endfunction
 
" Highlight symbol under cursor on CursorHold
"autocmd CursorHold * silent call CocActionAsync('highlight')
 
" Remap for rename current word
"nmap <leader>rn <Plug>(coc-rename)
 
 
augroup mygroup
  autocmd!
  " Setup formatexpr specified filetype(s).
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end
 
" Remap for do codeAction of selected region, ex: `<leader>aap` for current paragraph
"xmap <leader>a  <Plug>(coc-codeaction-selected)
"nmap <leader>a  <Plug>(coc-codeaction-selected)
" 
"" Remap for do codeAction of current line
"nmap <leader>ac  <Plug>(coc-codeaction)
"" Fix autofix problem of current line
"nmap <leader>qf  <Plug>(coc-fix-current)
" 
"" Create mappings for function text object, requires document symbols feature of languageserver.
"xmap if <Plug>(coc-funcobj-i)
"xmap af <Plug>(coc-funcobj-a)
"omap if <Plug>(coc-funcobj-i)
"omap af <Plug>(coc-funcobj-a)
 
" Use `:Format` to format current buffer
command! -nargs=0 Format :call CocAction('format')
 
" Use `:Fold` to fold current buffer
command! -nargs=? Fold :call     CocAction('fold', <f-args>)
 
" use `:OR` for organize import of current buffer
command! -nargs=0 OR   :call     CocAction('runCommand', 'editor.action.organizeImport')
set rnu

" ÊêúÁ¥¢Êèí‰ª∂
let g:ctrlp_map = '<leader>p'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_custom_ignore = {
    \ 'dir':  '\v[\/]\.(git|hg|svn|rvm)$',
    \ 'file': '\v\.(exe|so|dll|zip|tar|tar.gz|pyc)$',
    \ }
let g:ctrlp_working_path_mode=0
let g:ctrlp_match_window_bottom=1
let g:ctrlp_max_height=15
let g:ctrlp_match_window_reversed=0
let g:ctrlp_mruf_max=500
let g:ctrlp_follow_symlinks=1

"...
set termguicolors     " enable true colors support
set background=dark
" For light version.
" set background=light
" Set contrast.
" This configuration option should be placed before `colorscheme gruvbox-material`.
" Available values: 'hard', 'medium'(default), 'soft'
let g:gruvbox_material_background = 'hard'
let g:gruvbox_material_enable_italic = 1
let g:gruvbox_material_enable_bold = 1
" only support GUI client
let g:gruvbox_material_cursor = 'auto'
let g:gruvbox_material_transparent_background = 0
let g:gruvbox_material_menu_selection_background = 'green'
let g:gruvbox_material_ui_contrast = 'high'
let g:gruvbox_material_diagnostic_text_highlight = 1
let g:gruvbox_material_better_performance = 1

colorscheme gruvbox-material
"let ayucolor="dark"   " for dark version of theme
"colorscheme ayu
nnoremap <C-p> :GFiles<CR>
nnoremap <leader>ca :w <bar> %bd <bar> e# <bar> bd# <CR>
set autoindent
set tabstop=4       " The width of a TAB is set to 4.
                    " Still it is a \t. It is just that
                    " Vim will interpret it to be having
                    " a width of 4.
set shiftwidth=4    " Indents will have a width of 4
set softtabstop=4   " Sets the number of columns for a TAB
set expandtab       " Expand TABs to spaces

set ofu=syntaxcomplete#Complete
imap <silent> ` <C-X><C-O>
set cursorcolumn
set cursorline
set nu
