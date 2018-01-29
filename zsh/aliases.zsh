alias reload!='. ~/.zshrc'
alias vi='nvim'
alias nv="nvim"
alias emd='emacs --daemon'
alias em='emacsclient -t'
alias ge='emacsclient -nc'
alias pb='pbcopy'
alias po='pbpaste'
alias l='ls -lht --color'
alias rec='recent'
alias recent='ls -lht --color | head -10'
alias ll='lstoless'
alias pp='psc-package'
alias f='fd --type f | fzf'

alias emk="emacsclient -e '(kill-emacs)'"
alias emk2="ps -ef | grep emacs | awk '{print \$2}' | xargs kill"

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
