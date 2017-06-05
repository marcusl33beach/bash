# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Source bashrc
if [ -f ~/.bashrc ]; then
  . ~/.bashrc;
fi

# Adding colors to ls in MAC
if [ -f /data/mac ]; then
	export CLICOLOR=1
fi

# MacPorts
if [ -f /data/mac ]; then
  export PATH="/opt/local/bin:/opt/local/sbin:$PATH"
fi

# aliases
if [ -f /data/projects/bash/.aliases ]; then
  source "/data/projects/bash/.aliases"
fi

# functions
if [ -f /data/projects/bash/.functions ]; then
  source "/data/projects/bash/.functions"
fi

# color
if [ -f /data/projects/bash/.bashcolor ]; then
  source "/data/projects/bash/.bashcolor"
fi

# GE aliases
if [ -f /data/projects/ge_bash/.ge_bash_aliases ]; then
  source "/data/projects/ge_bash/.ge_bash_aliases"
fi

# GE functions
if [ -f /data/projects/ge_bash/.ge_bash_functions ]; then
  source "/data/projects/ge_bash/.ge_bash_functions"
fi

# Adding our Dragon friend.
if [ -f /usr/bin/cowsay ]; then
  dragon=`cowsay -f dragon Who dared to wake me up?`
  echo -e "\e[32m$dragon"
fi
