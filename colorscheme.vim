  autocmd VimEnter * nested call SetHighlightOptions()

  function SetHighlightOptions()
    highlight Normal ctermbg=NONE guibg=NONE
    highlight NonText ctermbg=NONE guibg=NONE
    highlight LineNr ctermbg=NONE guibg=NONE guifg=#5f87af
    highlight Folded ctermbg=NONE guibg=NONE
    highlight EndOfBuffer ctermbg=NONE guibg=NONE
  endfunction
