" Heavily based on fatih/vim-go's ftdetect/gofiletype.vim.

let s:current_fileformats = ''
let s:current_fileencodings = ''

function! s:wdtefiletype_pre(type)
	let s:current_fileformats = &g:fileformats
	let s:current_fileencodings = &g:fileencodings
	set fileencodings=utf-8 fileformats=unix
	let &l:filetype = a:type
endfunction

function! s:wdtefiletype_post()
	let &g:fileformats = s:current_fileformats
	let &g:fileencodings = s:current_fileencodings
endfunction

au BufNewFile *.wdte setfiletype wdte | setlocal fileencoding=utf-8 fileformat=unix
au BufRead *.wdte call s:wdtefiletype_pre("wdte")
au BufReadPost *.wdte call s:wdtefiletype_post()
