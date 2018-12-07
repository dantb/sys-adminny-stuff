export PATH="/usr/local/opt/icu4c/bin:$PATH"
export PATH="/usr/local/opt/icu4c/sbin:$PATH"
export PATH="/usr/local/opt/gettext/bin:$PATH"
export PATH="/usr/local/opt/libxml2/bin:$PATH"
export PATH="/usr/local/opt/openssl/bin:$PATH"
export PATH="/usr/local/bin:$PATH"
export PATH="/usr/local/sbin:$PATH"
export PATH="/usr/local/bin/pandoc:$PATH"
export PATH="$HOME/Applications/phabricator/arcanist/bin:$PATH"
export PATH="/usr/local/opt/sqlite/bin:$PATH"
export PYTHONPATH=$PYTHONPATH:/Users/daniel/Applications/phabricator/modelling/python/src/
export JAVA_HOME=`/usr/libexec/java_home -v 1.8.0_152`
# Maximum history lines in memory
export HISTSIZE=1000000
# Maximum history lines on disk
export HISTFILESIZE=10000000
# Ignore duplicate lines
export HISTCONTROL=ignoredups:erasedups
# When shell exits, append to the history file instead of overwriting
shopt -s histappend
# After each command, append to the history file and reread it
export PROMPT_COMMAND="${PROMPT_COMMAND:+$PROMPT_COMMAND$'\n'}history -a; history -c; history -r"
export C_INCLUDE_PATH=/usr/local/include
export CPLUS_INCLUDE_PATH=/usr/local/include
export LIBRARY_PATH=/usr/local/lib
export PATH="/usr/local/opt/thrift@0.9/bin:$PATH"
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi
source ~/git-completion.bash
export PS1='[\D{%F %T}] \W \$ '
