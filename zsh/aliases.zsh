alias reload!='. ~/.zshrc'
alias vi='vim'
alias nv="gvim"
alias emd='emacs --daemon'
alias emk='killall QUIT Emacs'
alias em='emacsclient -t'
alias ge='emacsclient -nc'
alias pb='pbcopy'
alias chrome-remote-debug='/Applications/Google\ Chrome.app/Contents/MacOS/Google\ Chrome --remote-debugging-port=9222'
alias recent='ls -lht | head -10'
alias ll='lstoless'

if test ! $(which xclip)
then
  alias pbcopy='xclip -selection clipboard'
  alias pbpaste='xclip -selection clipboard -o'
fi
