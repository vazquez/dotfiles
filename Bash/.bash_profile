function parse_git_branch {
  git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/[\1]/'
}

function parse_rvm {
  ruby -e 'puts ENV.has_key?("rvm_ruby_version") ? ENV["rvm_ruby_version"] : ""'
}

function precmd() {
  PROMPT="%n@%m %~$(parse_git_branch)$(parse_rvm)%# "
}


function proml {
  local        BLUE="\[\033[0;34m\]"
  local  LIGHT_BLUE="\[\033[1;36m\]"
  local         RED="\[\033[0;31m\]"
  local   LIGHT_RED="\[\033[1;31m\]"
  local       GREEN="\[\033[0;32m\]"
  local LIGHT_GREEN="\[\033[1;32m\]"
  local       WHITE="\[\033[0;37m\]"
  local  LIGHT_GRAY="\[\033[0;37m\]"
  case $TERM in
    xterm*)
    TITLEBAR='\[\033]0;\u@\h:\w\007\]'
    ;;
    *)
    TITLEBAR=""
    ;;
  esac

PS1="\h:\w$LIGHT_BLUE\$(parse_git_branch)\
$WHITE\$ "
PS2='> '
PS4='+ '
}
proml

export CC=/Developer/usr/bin/gcc
[[ -s "/Users/RicardoVazquez/.rvm/scripts/rvm" ]] && source "/Users/RicardoVazquez/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

