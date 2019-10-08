export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:$HOME/bin:$(go env GOPATH)/bin:$HOME/.cargo/bin:/usr/local/anaconda3/bin:$HOME/.java/jdk-13+33-jre/Contents/Home/bin"

# Change GOPATH Dir
export GOPATH="$HOME/Dev/go"

# fzf shell extensions
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# JAVA_HOME path
# export JAVA_HOME="`/usr/libexec/java_home -v 1.8`"

# Add rbenv to path
eval "$(rbenv init -)"

export XDG_CONFIG_HOME="$HOME/.config"

# Specify default editor. Possible values: vim, nano, ed etc.
export EDITOR=nvim

set editing-mode vi

# File search functions
function f() { find . -iname "*$1*" ${@:2} }
function r() { grep "$1" ${@:2} -R . }

# Create a folder and move into it in one command
function mkcd() { mkdir -p "$@" && cd "$_"; }

# fzf functions
# fd - cd to selected directory
fd() {
  local dir
  dir=$(find ${1:-.} -path '*/\.*' -prune \
                  -o -type d -print 2> /dev/null | fzf +m) &&
  cd "$dir"
}

# fh - search in your command history and execute selected command
fh() {
  eval $( ([ -n "$ZSH_NAME" ] && fc -l 1 || history) | fzf +s --tac | sed 's/ *[0-9]* *//')
}

# ch - browse chrome history
ch() {
  local cols sep
  cols=$(( COLUMNS / 3 ))
  sep='{::}'

  cp -f ~/Library/Application\ Support/Google/Chrome/Default/History /tmp/h

  sqlite3 -separator $sep /tmp/h \
    "select substr(title, 1, $cols), url
     from urls order by last_visit_time desc" |
  awk -F $sep '{printf "%-'$cols's  \x1b[36m%s\x1b[m\n", $1, $2}' |
  fzf --ansi --multi | sed 's#.*\(https*://\)#\1#' | xargs open
}

# Example aliases
alias cppcompile='c++ -std=c++11 -stdlib=libc++'
alias g='git'
alias szsh='source ~/.zshrc'
alias vzsh='vim ~/.zshrc'
alias venv='vim ~/.config/env.sh'
alias czsh='code ~/.zshrc'
alias vim='nvim'
alias c='cargo'
