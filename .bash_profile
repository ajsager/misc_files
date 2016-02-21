# .bash_profile
# Get the aliases and functions
if [ -f ~/.bashrc ]; then
 . ~/.bashrc
fi

# User specific environment and startup programs

PATH=$PATH:$HOME/bin

parse_git_branch() {
git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
export PATH
export PS1="\w\[\033[32m\]\$(parse_git_branch)\[\033[00m\] $ "
export CLICOLOR=1

#git
alias gco='git checkout '
alias gp='git push'
alias gc='git commit -m'
alias gb='git branch'
alias gpl='git pull'
alias gd='git diff'
alias gst='git status'

