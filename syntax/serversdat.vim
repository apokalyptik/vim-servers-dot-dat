if exists("b:current_syntax")
  finish
endif

syntax match sddFieldDelim "\v:"
syntax match sddRoleDelim "\v,"

syntax match sddEXTRA    /.\{-}\(:\|$\)/ contains=sddFieldDelim              nextgroup=sddSID
syntax match sddPRICE    /.\{-}\(:\|$\)/ contains=sddFieldDelim              nextgroup=sddEXTRA
syntax match sddROLES    /.\{-}\(:\|$\)/ contains=sddFieldDelim,sddRoleDelim nextgroup=sddPRICE
syntax match sddLAN      /.\{-}\(:\|$\)/ contains=sddFieldDelim              nextgroup=sddROLES
syntax match sddHOSTNAME /.\{-}\(:\|$\)/ contains=sddFieldDelim              nextgroup=sddLAN
syntax match sddWAN      /.\{-}\(:\|$\)/ contains=sddFieldDelim              nextgroup=sddHOSTNAME
syntax match sddDC       /.\{-}\(:\|$\)/ contains=sddFieldDelim              nextgroup=sddWAN
syntax match sddSID      /.\{-}\(:\|$\)/ contains=sddFieldDelim              nextgroup=sddDC

syntax match sddComment "\v#.*$"

highlight def link sddComment Comment

highlight sddSID        ctermfg='darkmagenta'   guifg='darkmagenta'
highlight sddDC         ctermfg='darkblue'      guifg='darkblue'
highlight sddWAN        ctermfg='darkcyan'      guifg='darkcyan'
highlight sddHOSTNAME   ctermfg='lightgreen'    guifg='lightgreen'
highlight sddLAN        ctermfg='darkred'       guifg='darkred'
highlight sddROLES      ctermfg='lightblue'     guifg='lightblue'
highlight sddPRICE      ctermfg='darkgreen'     guifg='darkgreen'
highlight sddEXTRA      ctermfg='lightcyan'     guifg='lightcyan'

highlight sddFieldDelim ctermfg='NONE'          guifg='NONE'
highlight sddRoleDelim  ctermfg='NONE'          guifg='NONE'
