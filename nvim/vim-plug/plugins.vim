
" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall
  autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/plugged')

"Plug 'rust-lang/rust.vim'
Plug 'itchyny/lightline.vim'
" Plug 'dense-analysis/ale'

Plug 'vim-erlang/vim-erlang-runtime'
" Semantic language support
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" (Optional) Multi-entry selection UI.
Plug 'junegunn/fzf'

" Colorscheme
Plug 'morhetz/gruvbox'
Plug 'chriskempson/base16-vim'
" List ends here. Plugins become visible to Vim after this call.
call plug#end()
