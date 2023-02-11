syntax enable
"set pythonthreedll=/root/usr/lib/libpython3.7m.so
set nu
set sw=2
set ts=2
"set expandtab
set et
set smarttab
set smartindent
set langmenu=en
"set ic
set encoding=utf-8
set noswapfile
set nocompatible
set backspace=indent,eol,start
set history=1000
set sm!
filetype off
"set tags+=~/.vim/tags/cpp_tags
"set tags+=~/.vim/tags/protobuf_tags
"set tags+=/boost_1_72_0/boost/boost_tags
"set tags+=~/.vim/tags/ace_tags
"set tags+=~/.vim/tags/sys_tags
"set tags+=~/.vim/tags/event_tags
"set tags+=~/.vim/tags/uv_tags
set laststatus=2
set statusline=\ %<%F[%1*%M%*%n%R%H]%=\ %y\ %0(%{&fileformat}\ %{&fileencoding}\ %c:%l/%L%)\ [%p%%]\
"set mouse=a
set lcs=tab:** "show tabs
set lcs+=trail:~ "show trailing spaces
set list "show tabs
set term=xterm
set signcolumn=no
highlight TabLine term=bold cterm=bold ctermbg=blue ctermfg=darkgrey
highlight TabLineSel term=bold cterm=bold ctermbg=darkgrey ctermfg=yellow
highlight TabLineFill cterm=bold ctermbg=darkgrey ctermfg=darkgrey
highlight Pmenu ctermbg=lightgrey ctermfg=black
highlight PmenuSel ctermbg=blue ctermfg=black
"hi CursorLine cterm=bold ctermbg=darkgrey ctermfg=None guibg=#666666 guifg=lightblue
"hi cursorcolumn cterm=bold ctermbg=darkgrey ctermfg=None guibg=lightblue guifg=lightblue
set cursorline
set cursorlineopt=line,number
"set nocursorcolumn
set cursorcolumn
"hi CursorLine cterm=bold,nocombine ctermbg=darkgrey ctermfg=none term=none
"hi CursorColumn cterm=bold,nocombine ctermbg=darkgrey term=bold,nocombine ctermfg=none guibg=darkgrey guifg=black
hi CursorLine cterm=bold,nocombine ctermbg=blue ctermfg=none term=none
hi CursorColumn cterm=bold,nocombine ctermbg=blue term=bold,nocombine ctermfg=none guibg=blue guifg=black
"hi Cursor cterm=bold ctermbg=blue term=bold ctermfg=blue guibg=blue guifg=blue
"hi CursorIM cterm=bold ctermbg=darkblue term=bold ctermfg=none guibg=blue guifg=black
"hi ErrorMsg		guifg=#ffffff guibg=#287eff						ctermfg=black ctermbg=lightblue
hi SignColumn		guifg=#ffffff guibg=#287eff						ctermfg=white ctermbg=white

hi CursorLineNr cterm=bold gui=bold  term=bold ctermbg=blue ctermfg=yellow guifg=yellow
hi LineNr cterm=bold guifg=green guibg=darkgrey gui=none ctermfg=white ctermbg=None term=none
"hi LineNrAbove cterm=bold ctermbg=black ctermfg=none guibg=black guifg=lightblue
"hi LineNrBelow cterm=bold ctermbg=green ctermfg=none guibg=black guifg=lightblue
hi StatusLine	guifg=blue guibg=darkgrey gui=none		ctermfg=darkgrey ctermbg=yellow term=none
hi StatusLineNC	guifg=black guibg=yellow gui=none		ctermfg=darkgrey ctermbg=blue term=none

"
set fdm=marker "marker for code fold
set hlsearch
set is "incremental search
"set shortmess="fx"

"au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe normal! g'\"" | endif

"set rtp+=~/.vim/bundle/Vundle.vim
call plug#begin()
Plug 'https://gitee.com/wangjiaming0909/ctrlp.vim'
Plug 'https://gitee.com/wangjiaming0909/nerdtree'
Plug 'https://gitee.com/wangjiaming0909/taglist.vim'
"Plug 'https://gitee.com/wangjiaming0909/vim-grepper'
Plug 'https://gitee.com/mirrors_telescope/vim-lsp-cxx-highlight'
Plug 'https://gitee.com/bon-ami/vim-lsp'
Plug 'https://gitee.com/cocosleep/vim-lsp-settings'
Plug 'https://gitee.com/wangjiaming0909/indentLine'
"Plug 'https://gitee.com/wangjiaming0909/ultisnips'
Plug 'https://gitee.com/wangjiaming0909/vim-snippets'
Plug 'https://gitee.com/wangjiaming0909/vim-anyfold'
Plug 'https://gitee.com/wangjiaming0909/coc.nvim', {'branch': 'release'}
Plug 'https://gitee.com/wangjiaming0909/coc-clangd'
"Plug 'https://github.com/lilydjwg/colorizer'

"Plug 'arecarn/vim-fold-cycle'
"Plug 'ericcurtin/CurtineIncSw.vim'

"Plugin 'https://gitee.com/mirrors_mattn/asyncomplete.vim'
"Plugin 'https://gitee.com/mirrors_mattn/asyncomplete-lsp.vim'
"Plugin 'Yggdroot/LeaderF', { 'do': ':LeaderfInstallCExtension' }
"Plugin 'Konfekt/FastFold'
"Plugin 'valloric/youcompleteme'
"Plugin 'octol/vim-cpp-enhanced-highlight'

"Plugin 'makerj/vim-pdf'
"Plugin 'clktmr/vim-gdscript3'
"
"Plug 'vim-scripts/Conque-GDB'

call plug#end()

filetype plugin indent on
filetype on
  let g:mapleader=" "


"map <F3> :NERDTree<CR>
"ctrlp
let g:ctrlp_custom_ignore={
  \ 'dir':  '\v[\/]\.(clangd|vscode|git|hg|svn)$',
  \ 'file': '\v\.(so|a|o)$',
  \ 'link': 'some_bad_symbolic_links',
  \ }
"ctrlp

"taglist
let tlist_cpp_settings = 'c++;n:namespace;v:variable;d:macro;t:typedef;' . 
                       \ 'c:class;m:member;g:enum;s:struct;u:union;f:function;' .
                       \ 'p:prototype'
let Tlist_Use_Right_Window=1
let Tlist_Exit_OnlyWindow=1
let Tlist_Process_file_Always=1
let Tlist_Show_One_File=1
set ut=1000 "refresh rate
let Tlist_Use_SingleClick=1
let Tlist_WinWidth=50
"taglist
"vimgrepper
let g:grepper = {
    \'tools': ['grep'],
    \'grep': {
    \    'grepprg':    'grep -sRIEn --exclude=tags $* .',
    \    'grepprgbuf': 'grep -sHIEn -- $* $.',
    \    'grepformat': '%f:%l:%m,%f',
    \    'escape':     '\^$.*[]'
    \}}
"nnoremap <leader>g :Grepper -tool grep <CR>
"vimgrepper


" CursorHold triggers in normal mode after a delay
"autocmd CursorHold * call s:Hover()
"nnoremap <silent> <leader>d :call <SID>Hover()<CR>
"nnoremap <leader>f :Leaderf --popup 

"augroup MyYCMCustom
"  autocmd!
"  autocmd FileType c,cpp let b:ycm_hover = {
"    \ 'command': 'GetDoc',
"    \ 'syntax': &filetype
"    \ }
"augroup END

"highlight

map ss :w<CR>
map qq :q!<CR>
noremap <leader>1 1gt
noremap <leader>2 2gt
noremap <leader>3 3gt
noremap <leader>4 4gt
noremap <leader>5 5gt
noremap <leader>6 6gt
noremap <leader>7 7gt
noremap <leader>8 8gt
noremap <leader>9 9gt
noremap <leader>e gt
noremap <leader>q gT
noremap <leader><Left> :vertical resize -6<CR>
noremap <leader><Right> :vertical resize +6<CR>
noremap <leader><Up> :resize +6<CR>
noremap <leader><Down> :resize -6<CR>
nnoremap <C-h> <C-o>
nnoremap <C-l> <C-i>
nnoremap <F12> <C-]>
"nnoremap <leader>a :pop<CR>
"nnoremap <C-j> :ts <C-R><C-w><CR>
"nnoremap <C-k> <C-]>
"nnoremap <leader>j :YcmC GoToReferences<CR>
"nnoremap <leader>k :tab YcmC GoTo<CR>
nnoremap <F5> :bufdo e<CR>
nnoremap f *
nnoremap F #
nnoremap <leader>w <C-w><C-w>
nnoremap <Down> <C-e>
nnoremap <Up> <C-y>
"nnoremap <leader>d <plug>(YCMHover)
"nnoremap <leader>F :YcmCompleter FixIt<CR>
"nnoremap <leader>R :YcmCompleter RefactorRename 
nnoremap D 11<C-e>
nnoremap U 11<C-y>
"nnoremap <leader>m :set mouse=a<CR>
nnoremap <leader>m :mark 
nnoremap <leader>M :set mouse=<CR>
nnoremap ;; zz11<C-y>
nnoremap t *N
nnoremap <leader>r :e<CR>
vnoremap // y/\V<C-R>=escape(@",'/\')<CR><CR>
nnoremap <leader>b :!make -j8<CR>
"nnoremap <leader>c :!make clean<CR>
"nnoremap <leader>l :<UP><CR>
nnoremap qw <C-w><C-W>:q<CR>
nnoremap <c-o> :CocCommand clangd.switchSourceHeader<CR>
nnoremap <leader>c :csc find s <C-R><C-W><CR>
"nnoremap <leader>C :csc find t 
"nnoremap <leader>f :csc find g <C-R><C-W><CR>
"nnoremap <leader>d :csc find c <C-R><C-W><CR>
map <leader>t :csc reset<CR> :csc add ./cscope.out<CR>

"map <C-f> :py3f ~/p/clang-format.py<CR>
"imap <C-f> <c-o>:py3f ~/p/clang-format.py<CR>


nmap <C-\>s :cs find s <C-R>=expand("<cword>")<CR><CR>
nmap <C-\>g :cs find g <C-R>=expand("<cword>")<CR><CR>
nmap <C-\>c :cs find c <C-R>=expand("<cword>")<CR><CR>
nmap <C-\>t :cs find t <C-R>=expand("<cword>")<CR><CR>
nmap <C-\>e :cs find e <C-R>=expand("<cword>")<CR><CR>
nmap <C-\>f :cs find f <C-R>=expand("<cfile>")<CR><CR>
nmap <C-\>i :cs find i ^<C-R>=expand("<cfile>")<CR>$<CR>
nmap <C-\>d :cs find d <C-R>=expand("<cword>")<CR><CR>

if filereadable("cscope.out")
  cs add cscope.out
endif

let g:ycm_disable_for_files_larger_than_kb = 0
let g:ycm_max_num_identifier_candidates = 10
let g:ycm_max_num_candidates = 10
"let g:ycm_collect_identifiers_from_tags_files = 1
let g:ycm_add_preview_to_completeopt = 1
let g:ycm_autoclose_preview_window_after_completion = 1
let g:ycm_autoclose_preview_window_after_insertion = 1
let g:ycm_complete_in_comments = 1
let g:ycm_clangd_binary_path = '/root/downloads/clangd_15.0.6/bin/clangd'
let g:ycm_clangd_args = ["-limit-results=30", "--header-insertion=never"]
let g:ycm_log_level = 'error'
highlight YcmErrorLine guibg=#3f0000
"let g:ycm_auto_hover = 'CursorHold'
let g:ycm_goto_buffer_command = 'split'
let g:ycm_clangd_uses_ycmd_caching = 0
let g:ycm_collect_identifiers_from_tags_files = 1

"let g:indentLine_setColors = 0
let g:indentLine_color_term = 2
"let g:indentLine_color_tty_light = 4 " (default: 4)
"let g:indentLine_color_dark = 2 " (default: 2)
let g:indentLine_char_list = ['¦']
let g:indentLine_bgcolor_term = 100
let g:indentLine_bgcolor_gui = '#FF5F00'

"ultisnips
"set runtimepath+=/root/.vim/bundle/ultisnips
"let g:UltiSnipsExpandTrigger="<c-g>"
"let g:UltiSnipsJumpBackwardTrigger="<c-p>"
"let g:UltiSnipsJumpForwardTrigger="<c-n>"

" If you want :UltiSnipsEdit to split your window.
"let g:UltiSnipsEditSplit="vertical"


"autocmd BufEnter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
"autocmd BufEnter NERD_tree_* nmap  d<CR> <CR> :NERDTreeToggle <CR>
"autocmd BufLeave NERD_tree_* unmap d<CR>


" NERDTress File highlighting
"function! NERDTreeHighlightFile(extension, fg, bg, guifg, guibg)
  "exec 'autocmd filetype nerdtree highlight ' . a:extension .' ctermbg='.  a:bg .' ctermfg='. a:fg .' guibg='. a:guibg .' guifg='. a:guifg
  "exec 'autocmd filetype nerdtree syn match ' . a:extension .' #^\s\+.*'.  a:extension .'$#'
"endfunction

"call NERDTreeHighlightFile('jade', 'green', 'none', 'green', '#151515')
"call NERDTreeHighlightFile('ini', 'yellow', 'none', 'yellow', '#151515')
"call NERDTreeHighlightFile('md', 'blue', 'none', '#3366FF', '#151515')
"call NERDTreeHighlightFile('yml', 'yellow', 'none', 'yellow', '#151515')
"call NERDTreeHighlightFile('config', 'yellow', 'none', 'yellow', '#151515')
"call NERDTreeHighlightFile('conf', 'yellow', 'none', 'yellow', '#151515')
"call NERDTreeHighlightFile('json', 'yellow', 'none', 'yellow', '#151515')
"call NERDTreeHighlightFile('html', 'yellow', 'none', 'yellow', '#151515')
"call NERDTreeHighlightFile('styl', 'cyan', 'none', 'cyan', '#151515')
"call NERDTreeHighlightFile('css', 'cyan', 'none', 'cyan', '#151515')
"call NERDTreeHighlightFile('coffee', 'Red', 'none', 'red', '#151515')
"call NERDTreeHighlightFile('js', 'Red', 'none', '#ffa500', '#151515')
"call NERDTreeHighlightFile('php', 'Magenta', 'none', '#ff00ff', '#151515')


function MyTabLine()
  let s = ''
  for i in range(tabpagenr('$'))
    " select the highlighting
    if i + 1 == tabpagenr()
      let s .= '%#TabLineSel#'
    else
      let s .= '%#TabLine#'
    endif

    " set the tab page number (for mouse clicks)
    let s .= '%' . (i + 1) . 'T'

    " the label is made by MyTabLabel()
    let s .= ' %{MyTabLabel(' . (i + 1) . ')} '
  endfor

  " after the last tab fill with TabLineFill and reset tab page nr
  let s .= '%#TabLineFill#%T'

  " right-align the label to close the current tab page
  if tabpagenr('$') > 1
    let s .= '%=%#TabLine#%999Xclose'
  endif

  return s
endfunction

function MyTabLabel(n)
  let buflist = tabpagebuflist(a:n)
  let winnr = tabpagewinnr(a:n)
  return bufname(buflist[winnr - 1])->fnamemodify(':t')
endfunction


set tabline=%!MyTabLine()

set background=light

autocmd BufNewFile,BufRead *.test set filetype=sql
autocmd BufNewFile,BufRead *.ic set filetype=cpp
 
let g:markdown_folding = 1
"autocmd FileType c,cpp setlocal foldmethod=syntax


" any fold
"autocmd Filetype cpp AnyFoldActivate
set foldlevel=99
hi Folded cterm=bold,nocombine,underline ctermfg=none ctermbg=none
" any fold
"
"let g:fold_cycle_default_mapping = 0 "disable default mappings
"nmap <leader><CR> <Plug>(fold-cycle-open)
"nmap <leader><leader> <Plug>(fold-cycle-close)

" Won't close when max fold is opened
let g:fold_cycle_toggle_max_open  = 0
" Won't open when max fold is closed
let g:fold_cycle_toggle_max_close = 0

" lsp
"let g:asyncomplete_log_file = '/tmp/async.log'
let g:lsp_auto_enable = 0
let g:lsp_diagnostics_enabled = 1
"let g:lsp_semantic_enabled = 1
let g:lsp_diagnostics_float_cursor = 1
let g:lsp_preview_keep_focus = 1
let g:lsp_diagnostics_float_delay = 200

let g:lsp_cxx_hl_log_file = '/tmp/vim-lsp-cxx-hl.log'
"let g:lsp_cxx_hl_verbose_log = 1
let g:lsp_cxx_hl_ft_whitelist = ['c', 'cpp', 'cc', 'h']
"let g:lsp_cxx_hl_use_text_props = 1

let g:coc_default_semantic_highlight_group = 1



inoremap <silent><expr> <TAB>
   \ coc#pum#visible() ? coc#_select_confirm() :
   \ coc#expandableOrJumpable() ?
   \ "\<C-r>=coc#rpc#request('doKeymap', ['snippets-expand-jump',''])\<CR>" :
   \ CheckBackspace() ? "\<TAB>" :
   \ coc#refresh()

function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

let g:coc_snippet_next = '<tab>'


inoremap <silent><expr> <c-@> coc#refresh()

"nmap <c-j> :LspDeclaration<CR>
"nmap <leader>c :LspWorkspaceSymbol<CR>
"nmap <c-k> :LspDefinition<CR>
"nmap <leader>j :LspReferences<CR>
"nmap <c-f> :LspDocumentFormat<CR>
"nmap <leader>f :LspWorkspaceSymbol<CR>
"nmap <leader>R :LspRename<CR>

"nmap <c-o> :LspNextReference<CR>
"nmap <c-i> :LspPreviousReference<CR>
"nmap <leader>p :LspPeekDeclaration<CR>

nmap <c-j> :call CocActionAsync('jumpDeclaration')<CR>
"nmap <leader>c :call CocAction('jumpDeclaration')<CR>
nmap <c-k> :call CocActionAsync('jumpDefinition')<CR>
nmap <leader>j :call CocActionAsync('jumpReferences')<CR>
nmap <c-f> :call CocActionAsync('format')<CR>
nmap <leader>f :call CocActionAsync('resolveWorkspaceSymbol')<CR>
nmap <leader>R :call CocActionAsync('rename')<CR>
nmap <leader>r :call CocActionAsync('refactor')<CR>
nmap <leader>k :call CocActionAsync('showIncomingCalls')<CR>

map <silent> <F9> :call CocActionAsync('showOutline')<CR><C-w>w


"nmap <c-o> :LspNextReference<CR>
"nmap <c-i> :LspPreviousReference<CR>
nmap <leader>p :LspPeekDeclaration<CR>

" GoTo code navigation
"nmap <silent> <leader>k <Plug>(coc-definition)
"nmap <silent> <leader>j <Plug>(coc-type-definition)
"nmap <silent> gi <Plug>(coc-implementation)
"nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window
nmap <leader>d :call ShowDocumentation()<CR>

function! ShowDocumentation()
  if CocAction('hasProvider', 'hover')
    call CocActionAsync('doHover')
  else
    call feedkeys('K', 'in')
  endif
endfunction

"Highlight the symbol and its references when holding the cursor
autocmd CursorHold * silent call CocActionAsync('highlight')

" Symbol renaming
"xmap <C-f>  <Plug>(coc-format-selected)
"nmap <C-f>  <Plug>(coc-format-selected)

" Applying code actions to the selected code block
" Example: `<leader>aap` for current paragraph
"xmap <leader>a  <Plug>(coc-codeaction-selected)
"nmap <leader>a  <Plug>(coc-codeaction-selected)

" Remap keys for applying code actions at the cursor position
nmap <leader>ac  <Plug>(coc-codeaction-cursor)
" Remap keys for apply code actions affect whole buffer
nmap <leader>as  <Plug>(coc-codeaction-source)
" Apply the most preferred quickfix action to fix diagnostic on the current line
nmap <leader>F  <Plug>(coc-fix-current)

" Remap keys for applying refactor code actions
nmap <silent> <leader>re <Plug>(coc-codeaction-refactor)
"xmap <silent> <leader>r  <Plug>(coc-codeaction-refactor-selected)
"nmap <silent> <leader>r  <Plug>(coc-codeaction-refactor-selected)

" Run the Code Lens action on the current line
"nmap <leader>cl  <Plug>(coc-codelens-action)

" Remap <C-f> and <C-b> to scroll float windows/popups
"if has('nvim-0.4.0') || has('patch-8.2.0750')
"  nnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
"  nnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
"  inoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(1)\<cr>" : "\<Right>"
"  inoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(0)\<cr>" : "\<Left>"
"  vnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
"  vnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
"endif

" Add `:Fold` command to fold current buffer
"command! -nargs=? Fold :call     CocAction('fold', <f-args>)

set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

"let g:lsp_cxx_hl_light_bg = 1

" Mappings for CoCList
" Show all diagnostics
"nnoremap <silent><nowait> <space>a  :<C-u>CocList diagnostics<cr>
" Manage extensions
"nnoremap <silent><nowait> <space>e  :<C-u>CocList extensions<cr>
" Show commands
"nnoremap <silent><nowait> <space>c  :<C-u>CocList commands<cr>
" Find symbol of current document
"nnoremap <silent><nowait> <space>o  :<C-u>CocList outline<cr>
" Search workspace symbols
"nnoremap <silent><nowait> <space>s  :<C-u>CocList -I symbols<cr>
" Do default action for next item
"nnoremap <silent><nowait> <space>j  :<C-u>CocNext<CR>
" Do default action for previous item
"nnoremap <silent><nowait> <space>k  :<C-u>CocPrev<CR>
" Resume latest coc list
"nnoremap <silent><nowait> <space>p  :<C-u>CocListResume<CR>
"
hi link CocSemVariable Normal

":call CocAction('pickColor')
hi CocSemFunction cterm=bold,nocombine ctermfg=green ctermbg=none ctermfg=green
hi CocSemMember cterm=bold,nocombine ctermfg=red ctermbg=none ctermfg=yellow
"hi CocSymbolMethod cterm=bold,nocombine ctermfg=green ctermbg=none ctermfg=yellow
"
hi CocSemFunction ctermfg=green ctermbg=none ctermfg=green
hi CocSemMember cterm=bold,nocombine ctermfg=green ctermbg=none ctermfg=grey
hi link CocSemMacro Normal
hi CocSemProperty cterm=bold,nocombine ctermfg=green ctermbg=none ctermfg=LightMagenta
hi link CocSemEnumConstant Normal
hi CocSemParameter cterm=bold,nocombine ctermfg=green ctermbg=none ctermfg=yellow
hi CocSemNamespace ctermfg=green ctermbg=none ctermfg=Brown

hi CocWarningHighlight cterm=bold,nocombine ctermfg=yellow ctermbg=none ctermfg=yellow

let g:coc_highlight_maximum_count = 1000
let g:coc_max_treeview_width = 1000


let g:lsp_settings = {
\ "clangd": {
\ 'cmd': 'clangd --background-index --header-insertion=never --limit-results=100 --limit-references=0 --clang-tidy=0 --background-index-priority=low --use-dirty-headers',
\ 'semantic_highlight': {
\ 'entity.name.function.cpp': 'Type',
\ 'entity.name.function.method.cpp': 'Type',
\ 'entity.name.function.method.static.cpp': '',
\ 'entity.name.function.preprocessor.cpp': '',
\ 'entity.name.namespace.cpp': '',
\ 'entity.name.other.dependent.cpp': ''
\}
\}
\}

" lsp
