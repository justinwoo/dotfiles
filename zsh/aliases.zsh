alias reload!='. ~/.zshrc'
alias vi='nvim'
alias nv="nvim"
alias emd='emacs --daemon'
alias em='emacsclient -t'
alias ge='emacsclient -nc'
alias pb='pbcopy'
alias po='pbpaste'
alias chrome-remote-debug='/Applications/Google\ Chrome.app/Contents/MacOS/Google\ Chrome --remote-debugging-port=9222'
alias l='ls -lht --color'
alias recent='ls -lht --color | head -10'
alias ll='lstoless'
alias pp='psc-package'
alias f='fd --type f | fzf'

alias emk="ps -ef | grep emacs | awk '{print \$2}' | xargs kill"

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

if [[ -a /bin/open ]]
then
  alias open='xdg-open'
fi
