alias reload!='. ~/.zshrc'
alias vi='vim'
alias nv="gvim"
alias emd='emacs --daemon'
alias em='emacsclient -t'
alias ge='emacsclient -nc'
alias pb='pbcopy'
alias chrome-remote-debug='/Applications/Google\ Chrome.app/Contents/MacOS/Google\ Chrome --remote-debugging-port=9222'
alias recent='ls -lht --color | head -10'
alias ll='lstoless'

if test "$(uname)" = "Darwin"
then
  alias emk="ps -ef | grep emacs | awk '{print }' | xargs kill"
else
  alias emk='killall emacs'
fi

if [[ -a $(which gxargs) ]]
then
  alias xargs="gxargs"
fi

if [[ -a $(which xclip) ]]
then
  alias pbcopy='xclip -selection clipboard'
  alias pbout='xclip -selection clipboard -o'
  alias pbpaste='xclip -selection clipboard -o'
fi
