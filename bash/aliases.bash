alias reload!='. ~/.bashrc'
alias c='cd ~/Code'
alias vi='nvim'
alias nv="nvim"
alias emd='emacs --daemon'
alias em='emacsclient -t'
alias ge='emacsclient -nc'
alias en='nix-shell -p emacs --run "emacsclient -t"'
alias gn='nix-shell -p emacs --run "emacsclient -nc"'
alias pb='pbcopy'
alias po='pbpaste'
alias l='ls -lht --color'
alias rec='recent'
alias recent='ls -lht --color | head -10'
alias first='ls -t | head -1'
alias ll='lstoless'
alias f='fd --type f | fzf'
alias darkest='xbacklight -set 1'
alias emk="ps -ef | grep emacs | awk '{print \$2}' | xargs kill"
alias ns='nix-shell $SHELL_NIX'

if [[ -f $(which xclip) ]]
then
  alias pbcopy='xclip -selection clipboard'
  alias pbout='xclip -selection clipboard -o'
  alias pbpaste='xclip -selection clipboard -o'
fi

if [[ -f /bin/open ]]
then
  alias open='xdg-open'
fi
