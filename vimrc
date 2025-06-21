" Enable the sane defaults
unlet! skip_defaults_vim
source $VIMRUNTIME/defaults.vim

map @r :keepp /<++><CR>ca<
imap @r <esc>:keepp /<++><CR>ca<
map @R :keepp /<++><CR>ca<
imap @R <esc>:keepp /<++><CR>ca<

" This is for copying in and out of Vim (uses gvim)
vnoremap <C-c> "+y
map <C-p> "+p

" This is for me not to get annoyed in English
autocmd FileType tex set wrap linebreak wrapmargin=55

" This is for spellcheck and spelling in those documents as well
" partly taken from castel.dev
autocmd FileType tex set spell

" Compile document (taken from voidrice)
map @c :w! \| !pdflatex "%"<CR>
map @C :w! \| !pdflatex "%"<CR>
map @p :!opout "%:p"<CR>
map @P :!opout "%:p"<CR>

" Runs a script that cleans out tex build files whenever I close out of a .tex file.
autocmd VimLeave *.tex !texclear %
