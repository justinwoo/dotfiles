# Use `hub` as our git wrapper:
#   http://defunkt.github.com/hub/
hub_path=$(which hub)
if (( $+commands[hub] ))
then
  alias git=$hub_path
fi

# The rest of my fun git aliases
alias gl='git pull --prune'
alias glog="git log --graph --pretty=format:'%Cred%h%Creset %an: %s - %Creset %C(yellow)%d%Creset %Cgreen(%cr)%Creset' --abbrev-commit --date=relative"
alias gp='git push origin HEAD'
alias gd='git diff'
alias gc='git commit'
alias gca='git commit -a'
alias gco='git checkout'
alias gcb='git copy-branch-name'
alias gb='git branch'
alias gs='git status -sb' # upgrade your git if -sb breaks for you. it's fun.

# my own git aliases
alias gpp='git pull --prune'
alias get-git-branch-name='git rev-parse --abbrev-ref HEAD'
alias ggbn='get-git-branch-name'
alias gib='git branch -v'
alias gip='git branch --merged master | grep -v "master$" | xargs git branch -d'
alias gis='git status -sb'
alias gid='git diff'
alias gids='git diff --staged'
alias gicm='git checkout master' # because this gets done so much and im lazy
alias getlastcommit='git show --oneline | awk NR==1'
alias glc='getlastcommit'
alias push-current-branch-to-origin='git push -u origin $(git rev-parse --abbrev-ref HEAD)'
alias gpo='push-current-branch-to-origin'
alias hey-mom-i-fixed-it='echo fixed in $(ggbn): $(glc)'
alias hmifi='hey-mom-i-fixed-it'
alias delete-merged-branches='git delete-merged-branches'
alias dmb='delete-merged-branches';

# pretty colors
alias gl='git log --graph --pretty=format:'\''%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset'\'' --abbrev-commit'
alias gil='git log --decorate --stat --graph --pretty=format:"%d %Cgreen%h%Creset (%ar - %Cred%an%Creset), %s%n"'
alias gild='git log --decorate'

# the following are dangerous operations
# use only if you are a madman
# i hate git pull, do the most dangerous thing quickly
alias gupdate='git fetch origin master && git rebase origin/master'
# same thing for upstream branch
alias gupstream='git fetch origin $(ggbn) && git rebase FETCH_HEAD'
# update children
alias gpullallchildren='gls -d */ | xargs -P10 -I{} git -C {} pull'
alias gpac='gpullallchildren'
