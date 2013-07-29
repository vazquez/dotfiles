# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="agnoster"
DEFAULT_USER="RicardoVazquez"

#Set Ruby version on startup

# Example aliases
# alias ohmyzsh="mate ~/.oh-my-zsh"

alias c='clear'
alias zshconfig="sub ~/.zshrc"
alias sub='open -a "Sublime Text 2"'
alias gs='git status'
alias gaa='git add *'
alias gco='git checkout '
alias gcb='git checkout -b '
alias gf='git fetch'
alias gpllo='git pull origin '
alias gpsho='git push origin '
alias sass='sass --watch style.scss:style.css'
alias gls="cd ${GIT_PREFIX:-`pwd`}; printf \"# HEAD: \"; git log --oneline | head -n1; git status"
alias rs='rails s'
alias rdb='bundle exec rake db:migrate'
alias dt='git difftool'
alias x='gitx'

#Functions

# function update(){
#   git checkout master && git pull && git checkout - && git rebase master
# }

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
export PATH=/Users/RicardoVazquez/.rvm/gems/ruby-1.9.3-p125/bin:/Users/RicardoVazquez/.rvm/gems/ruby-1.9.3-p125@global/bin:/Users/RicardoVazquez/.rvm/rubies/ruby-1.9.3-p125/bin:/Users/RicardoVazquez/.rvm/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/opt/X11/bin

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
source ~/.rvm/scripts/rvm

rvm use default
export PATH=/usr/local/Cellar/git/1.8.1.1/bin:$PATH

alias PORTFOLIOS='$HOME/Desktop/portfolios'
