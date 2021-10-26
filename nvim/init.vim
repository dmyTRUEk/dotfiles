" ----------------- This is dmyTRUEk's NVIM config file -----------------
"
" v1.0 - 2019.11.01:
"   added: syntax, vim-plug, vim-sublime-monokai,
"     vim-airline, cursor, set cursorline, set number
"
" v1.1 - 2019.11.02:
"   added: youcompleteme
"   edited: vim-plug -> vundle, airline sections settings
"
" v1.2 - 2019.11.03:
"   added: relative line number, nerdtree,
"     bindings (move between panes, 0, $)
"   edited: vundle -> vim-plug
"   removed: long whitespace check
"
" v1.3 - 2019.11.04:
"   added: tab length, YouCompleteMe min chars
"
" v1.4 - 2019.12.18:
"   added: incsearch, papercolor, autochdir
" 
" v1.5 - 2020.01.06:
"   added: auto-pairs
"
" v1.6 - 2020.02.13:
"   edited: reordered commands in .vimrc
"
" v1.6.1 - 2020.02.23:
"   added: auto move to main editing window from NERDTree,
"     use plugins only for special file types:
"       Plug 'blahblah', {'for': ['a', 'b']}
"
" v1.6.2 - 2020.03.14:
"   added: no preview on autocomplete
"   edited: set default theme
"
" v1.7 - 2020.03.21:
"   edited: smart and auto tabs equal 4 spaces
"
" v1.8 - 2020.03.25:
"   added: in nerdtree sort by type and natural
"
" v2.0 - 2020.04.09:
"   added: vim-fugitive, vim-surround, vim-commentary
"   edited: comments refactor
"   removed: airline y section
"
" v2.1 - 2020.05.18:
"   added: vimtex, command :PdfLaTeX for compiling Latex to pdf
" 
" v2.2 - 2020.06.08:
"   added: gruvbox theme
"
" v2.3 - 2020.06.20:
"   added: mapping <C-HJKL> for moving in insert mode,
"     disabled <C-H> mapping from auto-pairs,
"     <Leader>p for :w and :PdfLaTeX, so it saves and converts to pdf
"   edited: changed blinking cursor to static
"
" v3.0 - 2020.09.21:
"   added: mapping for ukr language 
"   edited: moved all leader remaps into one section
"
" v3.1 - 2020.09.25:
"   added: run python, c++ code by leader key
"   edited: run pdflatex by <Leader>p -> <Leader>l,
"     deleted almost invisible <space> from <f2>-><C-w> binding
" 
" v3.2 - 2020.10.02:
"   added: ultisnips, my own snips for latex
"
" v3.2.1 - 2020.10.05:
"   added: be snippet for latex
"
" v3.2.2 - 2020.10.26:
"   added: goto definition and back,
"     more snippets
"
" v3.3.0 - 2020.11.10:
"   added: leader+q -> quit, leader+n -> nerdtreetoggle,
"     leader+r -> run rust, more snippets
"   edited: enumarate -> enumerate
"
" v3.3.1 - 2020.11.30:
"   added: new snippets for latex: c->center, ca->cases, date,
"     Y -> y$
"   edited: all snippets
"   removed: ESC delay, showcmd
"
" v3.4.0 - 2021.07.25:
"   added: force scroll content, not move cursor by mouse wheel
"   edited: added possibility to turn on nowrap option,
"     rewritten plugins section
"   removed: nerdtree on startup
"
" v4.0.0 - 2021.08.04:
"   added: if term=alacritty => term=xterm-256color (for some bug fix),
"     vim or neovim specific settings, cursor min dist from edges,
"     custom airline_section_x = vim/neovim
"
" v4.1.0 - 2021.08.10:
"   added: leader+hjkl to move between windows in vim
"   edited: fixed goto definition and back
"   removed: scrolloff, compile latex and c/c++
"
" v4.2.0 - 2021.09.14:
"   added: vim-latex-zathura synchronization
"
" v4.2.1 - 2021.09.17:
"   added: fractional scrolloff
"
" v5.0.0 - 2021.09.18:
"   edited: migrated from VIM to NVIM
"     but this config file still almost fully compatible with vim,
"     just attentively read lines that starts with `if VIM:`
"
" v5.1.0 - 2021.09.21:
"   added: set leader+l/p/r only for latex/python/rust files,
"     map in tex files j/k -> gj/gk, completion from buffer(file)
"     (use all words from current file)
"   edited: completions: much better functionality, ux and visuals
"
" v5.1.1 - 2021.09.21:
"   removed: unused plugins
"
" v5.1.2 - 2021.09.24:
"   added: ukrainian language for completion
"
" v5.1.3 - 2021.09.25:
"   added: enable/disable all latex autos
"
" v5.2.0 - 2021.09.25:
"   added: map `cc<MOVE>` to Change Current word with MOVE word
"





filetype plugin indent on   " turns on 'detection', 'plugin' and 'indent' at once
syntax enable               " highlight syntax

" if VIM: use this if you dont want vi compatibility
"set nocompatible            " dont use 'vi' (before vim) compability

set encoding=utf-8          " use utf-8 encoding

set number relativenumber   " set line numbers relative to caret
set cursorline              " highlight cursor line
set showmatch               " shows matching brackets
set autochdir               " change current dir to file's dir
set completeopt-=preview    " dont show preview if using autocomplete
set laststatus=2            " it controls, when/how to display the status-bar: 0=never, 1={if > than 2 windows}, 2=always
" set showcmd                 " show last command (if you pressed 'j' then 'j' will be showed)

" better search:
set incsearch               " show search results immedeatly
set hlsearch                " highlight found
set ignorecase              " /word will find 'word' or 'Word' or 'WORD'
set smartcase               " When 'ignorecase' and 'smartcase' are both on, if a pattern contains an uppercase letter, it is case sensitive, otherwise, it is not. For example, '/The' would find only 'The', while '/the' would find 'the' or 'The'

" 'smart' tabs:
set tabstop=4               " when indenting with '>', use 4 spaces width
set shiftwidth=4            " On pressing tab, insert 4 spaces
set expandtab               " use spaces instead of tabs
set autoindent              " set tabs automatically, when starting new line

" Dont wrap lines: 
" set nowrap

" remove ESC delay:
" https://www.johnhawthorn.com/2012/09/vi-escape-delays/
" set esckeys                "However, this will break any sequences using Escape in insert mode
set timeoutlen=1000
set ttimeoutlen=0

" for Clipboard in Wayland+NVIM to work:
" if VIM: remove this
set clipboard+=unnamedplus



" SCROLLOFF: distance from window(viewport) top/bottom
" set scrolloff=16            " minimal number of lines to keep between cursor and top/bottom of viewport (screen)
let g:scrolloff_fraction = 0.15

function SetFractionalScrollOff(fraction)
    let l:visible_lines_in_active_window = winheight(win_getid())
    let &scrolloff = float2nr(l:visible_lines_in_active_window * a:fraction)
endfunction

autocmd BufEnter,WinEnter,WinNew,VimResized * call SetFractionalScrollOff(g:scrolloff_fraction)



" my Change Current word with another:
function Nothing()
    " nothing ;)
    " `echom` used instead of `echo`, because it seems faster
    echom ""
endfunction

" `cc` is duplication of `S`
" so we can use it for our purposes
" so firstly we clearing it:
nnoremap cc :call Nothing() <CR>

" map `cc<MOVE>` to Change Current word with MOVE word
" this solution is better than `df<space>f<space>p` because it might not work
" if there is no space after second word (for example `,` or `)` or `\n` or other)

" TODO: figure out better way to do this, so it works at least for `f<SYMBOL>`
" or even any move

" here `|` means cursor position
" aa|a bbb -> bbb| aaa
nnoremap ccw viwywviwp2bviwp
" aaa bb|b -> bbb aaa|
nnoremap ccb viwybviwpwviwp

" aaa.aa|a bbb.bbb -> bbb.bbb| aaa.aaa
nnoremap ccW viWyWviWp2BviWp
" aaa.aaa bbb.bbb| -> bbb.bbb aaa.aaa|
nnoremap ccB viWyBviWpWviWp

nnoremap cc2w viwy2wviwp3bviwp
nnoremap cc2b viwy2bviwp2wviwp
nnoremap cc2W viWy2WviWp3BviWp
nnoremap cc2B viWy2BviWp2WviWp

nnoremap cc3w viwy3wviwp4bviwp
nnoremap cc3b viwy3bviwp3wviwp
nnoremap cc3W viWy3WviWp4BviWp
nnoremap cc3B viWy3BviWp3WviWp



" Fix Vim/Neovim and Alacritty compatibility:
" source: https://github.com/alacritty/alacritty/issues/919
" TODO: turn on/off?
" if some strange BUG will occur => remove next line:
"if &term == 'alacritty'
"    set term=xterm-256color
"    execute "set <xUp>=\e[1;*A"
"    execute "set <xDown>=\e[1;*B"
"    execute "set <xRight>=\e[1;*C"
"    execute "set <xLeft>=\e[1;*D"
"endif



" VIM or NEOVIM specific configs
" https://learnvimscriptthehardway.stevelosh.com/chapters/21.html
" https://vi.stackexchange.com/questions/12794/how-to-share-config-between-vim-and-neovim
if has('nvim')
    " echom 'NEOVIM'

    let g:airline_section_x='NEOVIM'

else
    " echom 'VIM'

    " Scroll content instead of cursor line
    " set ttymouse=sgr

    let g:airline_section_x='VIM'

endif



" remaps in NORMAL mode:
" TODO: <F1> -> nvim help for current word
" nnoremap <F2> <C-w>   " deprecated: for change window use `<leader>hjkl` instead
nnoremap <F3> ^
nnoremap <F4> $

" remaps in INSRET mode:
" move in insert:
inoremap <C-H> <Left>
inoremap <C-J> <Down>
inoremap <C-K> <Up>
inoremap <C-L> <Right>

" remaps in VISUAL mode:
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv

" make Y copy till end of line
map Y y$



" use ukr in normal mode:
set langmap=фисвуапршолдьтщзйкіегмцчня;abcdefghijklmnopqrstuvwxyz,ФИСВУАПРШОЛДЬТЩЗЙКІЕГМЦЧНЯ;ABCDEFGHIJKLMNOPQRSTUVWXYZ



" CURSOR settings in different modes:
let &t_EI.="\e[2 q"         "EI = normal mode
let &t_SR.="\e[3 q"         "SR = replace mode
let &t_SI.="\e[6 q"         "SI = insert mode
" 1 - █ rectangle blinking
" 2 - █ rectangle
" 3 - _ underline blinking
" 4 - _ underline
" 5 - | vertical line blinking
" 6 - | vertical line



" if vim-plug not installed then install:
" if VIM: change it to '~/.vim/autoload/plug.vim' in next and nextnext lines
if empty(glob('~/.config/nvim/autoload/plug.vim'))
    silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
        \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" PLUGINS:
call plug#begin()

" Color Themes:
"Plug 'nlknguyen/papercolor-theme'
"Plug 'ErichDonGubler/vim-sublime-monokai'
"Plug 'kjssad/quantum.vim'
Plug 'morhetz/gruvbox'

" Status Bar (bottom):
Plug 'vim-airline/vim-airline'

" File Manager inside vim (default on left side):
Plug 'scrooloose/nerdtree'

" Vim Surround:
" cs'<t> inside '' => 'Hello world' -> <t>Hello world</t>
Plug 'tpope/vim-surround'

" Auto Completion:
" if VIM: i think easier to use this instead of LSP based solution
"Plug 'valloric/youcompleteme'   
", {'for': ['cpp', 'python']}

" Close Brackets automatically:
Plug 'jiangmiao/auto-pairs'

" Comments manager: use 'gcc' (not C compiler) to comment/uncomment line:
Plug 'tpope/vim-commentary'

" Highlight words' unique symbols when pressing f F t T
Plug 'unblevable/quick-scope'

" Git wrapper so awesome, it should be illegal:
"Plug 'tpope/vim-fugitive'

" ? Syntax Highlight:
"Plug 'scrooloose/syntastic'

" Rust Syntax:
"Plug 'rust-lang/rust.vim'

" for LaTeX:
Plug 'lervag/vimtex'        ,{'for': ['tex']}

" Snippets (i use it for LaTeX):
Plug 'sirver/ultisnips'     ,{'for': ['tex']}

" Async Run:
"Plug 'skywind3000/asyncrun.vim'

" Kotlin Syntax:
Plug 'udalov/kotlin-vim'

" Telescope:
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'



" LSP based completions:
Plug 'neovim/nvim-lspconfig'
Plug 'nvim-lua/completion-nvim'
"Plug 'folke/lsp-colors.nvim'

" Extentions to built-in LSP, for example, providing type inlay hints:
"Plug 'nvim-lua/lsp_extensions.nvim'

" for completion from current file:
Plug 'steelsojka/completion-buffers'

" To enable more of the features of rust-analyzer, such as inlay hints and more!
"Plug 'simrat39/rust-tools.nvim'

call plug#end()



" COLORSCHEME settings:
" Papercolor:
"set background=light
"colorscheme PaperColor

" Sublimemonokai:
"colorscheme sublimemonokai

" Quantum:
"set termguicolors   " enable true colors support
"set background=light   " light theme
"colorscheme quantum

" Gruvbox:
set background=dark
set termguicolors       " fix wrong colors
colorscheme gruvbox



" YouCompleteMe settings:
"let g:ycm_min_num_of_chars_for_completion=1



" NERDTree settings:
autocmd VimEnter * set mouse=a      " enable changing panes size by mouse
" autocmd VimEnter * NERDTree       " launch on startup
" autocmd VimEnter * wincmd w       " auto move to main panel

let NERDTreeSortOrder = ['[[extension]]']       " sort by type
let NERDTreeNaturalSort = 1         " Sort files in natural order (f1, f5, f10, f100)

" let NERDTreeIgnore = ['\.pyc$']   "ignore files with this extension



" AutoPairs settings:
" TODO: what does this do?
let g:AutoPairsMapCh=0



" Surrounding settings:
" TODO: change so that `ys(` dont add spaces inside



" Quick-scope settings:
let g:qs_highlight_on_keys = ['f', 'F', 't', 'T']



" AIRLINE settings:
let g:airline_powerline_fonts=1
"let g:airline_detect_spelllang=1
"let g:airline_section_a=""
"let g:airline_section_b=""
"let g:airline_section_c=""
"let g:airline_section_gutter=""
" let g:airline_section_x=""
let g:airline_section_y=""
let g:airline_section_z="Line: %l/%L, Col: %c"
"let g:airline_section_error=""
"let g:airline_section_warning=""

let b:airline_whitespace_checks = ['indent', 'mixed-indent-file', 'conflicts']
"let b:airline_whitespace_checks = ['indent', 'trailing', 'long', 'mixed-indent-file', 'conflicts']

let g:Powerline_symbols='unicode'





" LSP + Completion + CompletionBuffers config:
set completeopt=menuone,noinsert
set pumheight=15

" Avoid showing extra message when using completion
" set shortmess+=c

let g:completion_matching_strategy_list = ['exact', 'substring', 'fuzzy']
let g:completion_auto_change_source = 1
"let g:completion_sorting = 'length'

let g:completion_enable_snippet = 'UltiSnips'

"let g:completion_matching_ignore_case = 1
let g:completion_matching_smart_case = 1

let g:completion_trigger_keyword_length = 1
let g:completion_trigger_on_delete = 1

" ^ means not, so [^...] means every character that is not ...
" default: [^a-zA-Z0-9\-_]
" let g:completion_word_separator = "[^a-zA-Z0-9\-_а-ґ'.]"
autocmd BufEnter *     let g:completion_word_separator = "[^a-zA-Z0-9\-_а-ґА-Ґ]"
autocmd BufEnter *.tex let g:completion_word_separator = "[^a-zA-Z0-9\-_а-ґА-Ґ'.]"

let g:completion_chain_complete_list = {
\   'default': [
\       {'complete_items': ['lsp', 'path']},
\       {'complete_items': ['buffers']}
\   ],
\   'tex': [
\       {'complete_items': ['lsp', 'path', 'snippet']},
\       {'complete_items': ['buffers']}
\   ]
\}

" Use <Tab> and <Shift+Tab> to navigate through popup menu
inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

highlight LspDiagnosticsDefaultError guibg=#FF3322 guifg=#FFFFFF
" highlight LspDiagnosticsDefaultWarning guibg=#FF3322 guifg=#FFFFFF
" highlight LspDiagnosticsDefaultInformation guibg=#FF3322 guifg=#FFFFFF
highlight LspDiagnosticsDefaultHint guibg=#928374 guifg=#3c3836
" EWIH = Error, Warning, Information, Hint

autocmd BufEnter * lua require'completion'.on_attach()

augroup CompletionTriggerCharacter
    autocmd!
    autocmd BufEnter * let g:completion_trigger_character = ['.']

    autocmd BufEnter *.tex let g:completion_trigger_character = ['\']

    " TODO: test ', ' and '(' (maybe try '()')
    autocmd BufEnter *.rs let g:completion_trigger_character = ['.', '::']
    autocmd BufEnter *.py let g:completion_trigger_character = ['.']
    autocmd BufEnter *.c,*.cpp let g:completion_trigger_character = ['.', '::']
augroup end



lua << EOF
local nvim_lsp = require('lspconfig')

-- Use an on_attach function to only map the following keys
-- after the language server attaches to the current buffer
local on_attach = function(client, bufnr)
    local function buf_set_keymap(...) vim.api.nvim_buf_set_keymap(bufnr, ...) end
    --local function buf_set_option(...) vim.api.nvim_buf_set_option(bufnr, ...) end

    -- Mappings.
    local opts = { noremap=true, silent=true }

    -- See `:help vim.lsp.*` for documentation on any of the below functions
    buf_set_keymap('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<CR>', opts)
    buf_set_keymap('n', 'gD', '<cmd>lua vim.lsp.buf.declaration()<CR>', opts)
    buf_set_keymap('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<CR>', opts)

    buf_set_keymap('n', '<space>r', '<cmd>lua vim.lsp.buf.rename()<CR>', opts)
    --buf_set_keymap('n', '<F2>', '<cmd>lua vim.lsp.buf.rename()<CR>', opts)

    -- TODO: configure references to choose once and close window
    buf_set_keymap('n', 'gr', '<cmd>lua vim.lsp.buf.references()<CR>', opts)

    buf_set_keymap('n', 'K', '<cmd>lua vim.lsp.buf.hover()<CR>', opts)
    buf_set_keymap('n', '<C-k>', '<cmd>lua vim.lsp.buf.signature_help()<CR>', opts)
    buf_set_keymap('n', '<space>e', '<cmd>lua vim.lsp.diagnostic.show_line_diagnostics()<CR>', opts)
    buf_set_keymap('n', '[d', '<cmd>lua vim.lsp.diagnostic.goto_prev()<CR>', opts)
    buf_set_keymap('n', ']d', '<cmd>lua vim.lsp.diagnostic.goto_next()<CR>', opts)
    --buf_set_keymap('n', '<space>rn', '<cmd>lua vim.lsp.buf.rename()<CR>', opts)
    --buf_set_keymap('n', '<space>wa', '<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>', opts)
    --buf_set_keymap('n', '<space>wr', '<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>', opts)
    --buf_set_keymap('n', '<space>wl', '<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>', opts)
    --buf_set_keymap('n', '<space>D', '<cmd>lua vim.lsp.buf.type_definition()<CR>', opts)
    --buf_set_keymap('n', '<space>ca', '<cmd>lua vim.lsp.buf.code_action()<CR>', opts)
    --buf_set_keymap('n', '<space>q', '<cmd>lua vim.lsp.diagnostic.set_loclist()<CR>', opts)
    --buf_set_keymap('n', '<space>f', '<cmd>lua vim.lsp.buf.formatting()<CR>', opts)
end

vim.lsp.handlers['textDocument/publishDiagnostics'] = vim.lsp.with(
    vim.lsp.diagnostic.on_publish_diagnostics, {
        virtual_text = {
            prefix = "»",   -- EWIH prefix
            spacing = 3,    -- EWIH spaces before prefix
        },
        signs = true,       -- show EWIH on left from line numbers
        underline = true,   -- underline part of line, that have EWIH
        update_in_insert = true,    -- update EWIH in insert mode
    }
)

function PrintDiagnosticsInStatisLine(opts, bufnr, line_nr, client_id)
  opts = opts or {}

  bufnr = bufnr or 0
  line_nr = line_nr or (vim.api.nvim_win_get_cursor(0)[1] - 1)

  local line_diagnostics = vim.lsp.diagnostic.get_line_diagnostics(bufnr, line_nr, opts, client_id)
  if vim.tbl_isempty(line_diagnostics) then return end

  local diagnostic_message = ""
  for i, diagnostic in ipairs(line_diagnostics) do
    diagnostic_message = diagnostic_message .. string.format("%d: %s", i, diagnostic.message or "")
    print(diagnostic_message)
    if i ~= #line_diagnostics then
      diagnostic_message = diagnostic_message .. "\n"
    end
  end
  vim.api.nvim_echo({{diagnostic_message, "Normal"}}, false, {})
end

--vim.cmd [[ set updatetime=1000 ]]
--vim.cmd [[ autocmd CursorHold * lua PrintDiagnosticsInStatisLine() ]]

-- Use a loop to conveniently call 'setup' on multiple servers and
-- map buffer local keybindings when the language server attaches
-- TODO: add latex, python?
local servers = { 'rust_analyzer' }
for _, lsp in ipairs(servers) do
    nvim_lsp[lsp].setup {
        on_attach = on_attach,
        flags = {
            debounce_text_changes = 150,
        }
    }
end
EOF





" for LaTeX:
command CompileLaTeXtoPDF ! echo '\n\n\n\n\n' && pdflatex -halt-on-error -synctex=1 %:t

" snippets for LaTeX:
let g:UltiSnipsExpandTrigger='<F8>'
let g:UltiSnipsJumpForwardTrigger='<F8>'
let g:UltiSnipsJumpBackwardTrigger='<F9>'
let g:UltiSnipsEditSplit="horizontal"

" you may want disable it, if you want to see only .tex, without .pdf
function SynctexFromVimToZathuraDisable()
    let g:is_synctex_from_vim_to_zathura_must_work = 0
endfunction
function SynctexFromVimToZathuraEnable()
    let g:is_synctex_from_vim_to_zathura_must_work = 1
endfunction

" you may want disable it, if you dont want to compile latex
function CompileLaTeXtoPDFDisable()
    let g:is_compile_latex_to_pdf_must_work = 0
endfunction
function CompileLaTeXtoPDFEnable()
    let g:is_compile_latex_to_pdf_must_work = 1
endfunction

" you may want to disable all LaTeX connected autos
function LaTeXautosDisable()
    let g:is_compile_latex_to_pdf_must_work = 0
    let g:is_synctex_from_vim_to_zathura_must_work = 0
endfunction
function LaTeXautosEnable()
    let g:is_compile_latex_to_pdf_must_work = 1
    let g:is_synctex_from_vim_to_zathura_must_work = 1
endfunction

function SynctexFromVimToZathura()
    " remove 'silent' for debugging
    " execute "silent !zathura --synctex-forward " . line('.') . ":" . col('.') . ":" . bufname('%') . " " . g:syncpdf
    if g:is_synctex_from_vim_to_zathura_must_work
        execute "silent !zathura --synctex-forward " . line('.').":".col('.').":".bufname('%') . " " . expand('%:t:r').".pdf"
    endif
endfunction

function SynctexFromVimToZathuraSafe()
    if g:compile_latex_to_pdf_last_exit_code == 0
        call SynctexFromVimToZathura()
    endif
endfunction

function CompileLaTeXtoPDFasyncOnExit(j, c, e)
    let g:compile_latex_to_pdf_prev_exit_code = g:compile_latex_to_pdf_last_exit_code
    let g:compile_latex_to_pdf_last_exit_code = a:c
    echom 'pdflatex finished. exit code: ' . g:compile_latex_to_pdf_last_exit_code
    
    " synchronize latex (vim) and pdf (zathura) using new synctex file:
    " this `if` needed for case when prev compile wasnt successful, and
    " therefore simply calling `SynctexFromVimToZathuraSafe()` will
    " open new window + reload old one.
    if g:compile_latex_to_pdf_prev_exit_code == 0
        call SynctexFromVimToZathuraSafe()
    endif
    
    " unlock another possible instances of this function:
    let g:compile_latex_to_pdf_is_now_compiling = 0
endfunction

function CompileLaTeXtoPDFasync()
    if g:is_compile_latex_to_pdf_must_work && g:compile_latex_to_pdf_is_now_compiling == 0
        " lock another possible instances of this function:
        let g:compile_latex_to_pdf_is_now_compiling = 1

        " save file before compiling:
        execute "w"

        " compile file:
        call jobstart("pdflatex -halt-on-error -synctex=1 " . bufname("%"), {"on_exit": "CompileLaTeXtoPDFasyncOnExit"})
    endif
endfunction

function SetupEverythingForLaTeX()
    nnoremap j gj
    nnoremap k gk

    let g:tex_flavor='latex'

    " look at: https://habr.com/ru/post/445066/
    " let g:vimtex_view_general_viewer='okular'
    " let g:vimtex_view_general_options='--unique file:@pdf\#src:@line@tex'
    " let g:vimtex_view_general_options_latexmk='--unique'
    let g:vimtex_quickfix_mode=0
    " set conceallevel=1
    " let g:tex_conceal='abdmg'

    let g:vimtex_view_method='zathura'

    " things for reactivity/dynamics:
    let g:is_synctex_from_vim_to_zathura_must_work = 1
    let g:is_compile_latex_to_pdf_must_work = 1

    autocmd CursorMoved *.tex call SynctexFromVimToZathuraSafe()
    " autocmd CursorMovedI *.tex call SynctexFromVimToZathuraSafe()

    let g:compile_latex_to_pdf_is_now_compiling = 0
    let g:compile_latex_to_pdf_last_exit_code = 1
    let g:compile_latex_to_pdf_prev_exit_code = 1

    " set hold delay
    set updatetime=1500
    autocmd CursorHold *.tex call CompileLaTeXtoPDFasync()
    " autocmd CursorHoldI *.tex call CompileLaTeXtoPDFasync()
    " autocmd InsertLeave *.tex call CompileLaTeXtoPDFasync()
    " autocmd CursorMovedI *.tex call CompileLaTeXtoPDFasync()

endfunction

autocmd BufReadPost *.tex call SetupEverythingForLaTeX()





" LEADER MAPS:

" Set leader key:
let mapleader=" "

" Save (Write) file:
nnoremap <leader>w :w <CR>

" Quit:
nnoremap <leader>q :q <CR>

" Save (Write) All files:
nnoremap <leader>W :wa <CR>

" Quit All without saving:
nnoremap <leader>Q :qa! <CR>

" Save All and Quit All:
nnoremap <leader>A :wqa <CR>



" NERDTreeToggle:
nnoremap <leader>n :NERDTreeToggle <CR>

" move between windows inside vim:
nnoremap <leader>h :wincmd h <CR>
nnoremap <leader>j :wincmd j <CR>
nnoremap <leader>k :wincmd k <CR>
nnoremap <leader>l :wincmd l <CR>

" go to Definition:
" nnoremap <silent> <leader>d mD :YcmCompleter GoTo<CR>
" go to Back
" nnoremap <silent> <leader>b `D :delmarks D<CR>

" Telescope:
nnoremap <leader>f :Telescope find_files <CR>
nnoremap <leader>g :Telescope live_grep <CR>

" here `<leader>c` stands for `compile/run` whatever it be
" LaTeX:
function SetupLeaderMapForLaTeX()
    nnoremap <leader>c :w <bar> CompileLaTeXtoPDF <CR>
endfunction
autocmd BufReadPost *.tex call SetupLeaderMapForLaTeX()

" Python:
function SetupLeaderMapForPython()
    nnoremap <leader>c :wa <bar> :! python % <CR>
endfunction
autocmd BufReadPost *.py call SetupLeaderMapForPython()

" Rust:
function SetupLeaderMapForRust()
    nnoremap <leader>c :wa <bar> :! cargo test && cargo run <CR>
endfunction
autocmd BufReadPost *.rs call SetupLeaderMapForRust()





" the end ;)
