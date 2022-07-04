
let mapleader=" "
set tabstop=4
set shiftwidth=4
set expandtab
set hidden

"set clipboard=unnamedplus
"set cursorline
set number
set relativenumber
set ignorecase
set smartcase

autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

luafile ~/.config/nvim/lua/plugins.lua
luafile ~/.config/nvim/lua/lsp.lua
luafile ~/.config/nvim/lua/nvim-cmp.lua
luafile ~/.config/nvim/lua/pluginsconfig.lua
luafile ~/.config/nvim/lua/dap-configs.lua
luafile ~/.config/nvim/lua/markdown_config.lua

set rtp+=/bin/
noremap <leader>fz :FZF<cr>

"autocmd BufWritePre * %s/\s\+$//e
"autocmd BufWritePre * %s/\n\+\%$//e


map <A-h> <C-w>h
map <A-j> <C-w>j
map <A-k> <C-w>k
map <A-l> <C-w>l

map <leader>s :setlocal spell! spelllang=en_us<CR>

map <leader>i :setlocal autoindent<CR>
map <leader>I :setlocal noautoindent<CR>


let g:floaterm_winblend = 8

nnoremap   <silent>   <F8>   :FloatermNew<CR>
tnoremap   <silent>   <F8>   <C-\><C-n>:FloatermNew<CR>
nnoremap   <silent>   <F9>   :FloatermNext<CR>
tnoremap   <silent>   <F9>  <C-\><C-n>:FloatermNext<CR>
nnoremap   <silent>   <A-u>   :FloatermToggle<CR>
tnoremap   <silent>   <A-u>   <C-\><C-n>:FloatermToggle<CR>
tnoremap   <silent>   <F11>   <C-\><C-n>:FloatermKill<CR>

autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() |
    \ quit | endif

nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>

autocmd FileType c,h,cpp,hpp nnoremap <buffer> <silent> <leader>gh :ClangdSwitchSourceHeader<CR>
nnoremap <C-n> :NvimTreeToggle<CR>

let g:indentLine_char = '│'


let g:airline_theme = 'gruvbox'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#fnamemod = ':t'

colorscheme gruvbox
set noshowmode


map <leader>m :w! \| !gcc "<c-r>%"
autocmd filetype python nnoremap <F4> :w <bar> exec '!python '.shellescape('%')<CR>
autocmd filetype c nnoremap <F4> :w <bar> exec '!gcc '.shellescape('%').' -o '.shellescape('%:r').' && '.shellescape(expand('%:p:r'))<CR>
autocmd filetype cpp nnoremap <F4> :w <bar> exec '!g++ '.shellescape('%').' -o '.shellescape('%:r').' && '.shellescape(expand('%:p:r'))<CR>
autocmd filetype c nnoremap <c-F4> :w <bar> exec '!gcc -g '.shellescape('%').' -o '.shellescape('%:r').' && '.shellescape(expand('%:p:r'))<CR>
autocmd filetype cpp nnoremap <c-F4> :w <bar> exec '!g++ -g '.shellescape('%').' -o '.shellescape('%:r').' && '.shellescape(expand('%:p:r'))<CR>
nnoremap <leader>bb <cmd>BufferLinePick<cr>

nnoremap <silent> gb :BufferLinePick<CR>

nmap <leader>l :bn<CR>
nmap <leader>h :bp<CR>
nmap <C-q> :bp <BAR> bd #<CR>
nmap <leader>bl :buffers<cr>:b<space>


set guifont=Hack\ 12
set encoding=UTF-8
let g:airline_powerline_fonts = 1


nnoremap <silent> <F5> :lua require'dap'.continue()<CR>
nnoremap <silent> <S-F5> :lua require'dap'.close()<CR>
nnoremap <silent> <F10> :lua require'dap'.step_over()<CR>
nnoremap <silent> <F11> :lua require'dap'.step_into()<CR>
nnoremap <silent> <F12> :lua require'dap'.step_out()<CR>
nnoremap <silent> <leader>b :lua require'dap'.toggle_breakpoint()<CR>
nnoremap <silent> <leader>B :lua require'dap'.set_breakpoint(vim.fn.input('Breakpoint condition: '))<CR>
nnoremap <silent> <leader>lp :lua require'dap'.set_breakpoint(nil, nil, vim.fn.input('Log point message: '))<CR>
nnoremap <silent> <leader>dr :lua require'dap'.repl.open()<CR>
nnoremap <silent> <leader>dl :lua require'dap'.run_last()<CR>



nnoremap <leader>dcc :lua require"telescope".extensions.dap.commands{}<CR>
nnoremap <leader>dco :lua require"telescope".extensions.dap.configurations{}<CR>
nnoremap <leader>dlb :lua require"telescope".extensions.dap.list_breakpoints{}<CR>
nnoremap <leader>dv  :lua require"telescope".extensions.dap.variables{}<CR>
nnoremap <leader>df  :lua require"telescope".extensions.dap.frames{}<CR>

nnoremap <leader>duh :lua require"dap.ui.widgets".hover()<CR>
nnoremap <leader>duf :lua local widgets=require'dap.ui.widgets';widgets.centered_float(widgets.scopes)<CR>

"nnoremap <leader>dsc :lua require"dap.ui.variables".scopes()<CR>
"nnoremap <leader>dhh :lua require"dap.ui.variables".hover()<CR>')
"vnoremap <leader>dhv :lua require"dap.ui.variables".visual_hover()<CR>')

imap <silent><script><expr> <C-J> copilot#Accept("\<CR>")
let g:copilot_no_tab_map = v:true

" MarkdownPreview
let g:mkdp_auto_start = 1
let g:mkdp_auto_close = 1
let g:mkdp_refresh_slow = 0
let g:mkdp_command_for_global = 0
let g:mkdp_open_to_the_world = 0
let g:mkdp_open_ip = ''
let g:mkdp_browser = ''
let g:mkdp_echo_preview_url = 0
let g:mkdp_browserfunc = ''
let g:mkdp_preview_options = {
    \ 'mkit': {},
    \ 'katex': {},
    \ 'uml': {},
    \ 'maid': {},
    \ 'disable_sync_scroll': 0,
    \ 'sync_scroll_type': 'middle',
    \ 'hide_yaml_meta': 1,
    \ 'sequence_diagrams': {},
    \ 'flowchart_diagrams': {},
    \ 'content_editable': v:false,
    \ 'disable_filename': 0,
    \ 'toc': {}
    \ }
let g:mkdp_markdown_css = ''
let g:mkdp_highlight_css = ''
let g:mkdp_port = ''
let g:mkdp_page_title = '「${name}」'
let g:mkdp_filetypes = ['markdown']
let g:mkdp_theme = 'dark'
nnoremap <C-s> <Plug>MarkdownPreview
nnoremap <M-s> <Plug>MarkdownPreviewStop
nnoremap <C-p> <Plug>MarkdownPreviewToggle

