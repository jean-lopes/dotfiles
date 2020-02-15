augroup fmt
  autocmd!
  autocmd BufWritePre * undojoin | Neoformat
augroup END
let g:neoformat_enabled_ebnf = []
let g:neoformat_enabled_haskell = ["hindent", "stylishhaskell"]
let g:neoformat_run_all_formatters = 1
let g:neoformat_basic_format_retab = 1
let g:neoformat_basic_format_trim = 1

