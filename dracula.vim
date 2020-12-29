  autocmd VimEnter * nested call SetHighlightOptions()

  function SetHighlightOptions()
    colorscheme dracula  "example
    highlight Normal ctermbg=NONE guibg=NONE
    highlight NonText ctermbg=NONE guibg=NONE
    highlight LineNr ctermbg=NONE guibg=NONE
    highlight Folded ctermbg=NONE guibg=NONE
    highlight EndOfBuffer ctermbg=NONE guibg=NONE
  endfunction
