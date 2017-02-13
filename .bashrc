# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Custom bash prompt
if [ -f /data/mac ]; then
  export PS1="\[\e[36m\]Mac \[\e[m\]\w: "
elif [ -f /data/ws ]; then
  export PS1="\[\e[36m\]Workstation \[\e[m\]\w: "
else
  export PS1="\[\e[36m\]Computer \[\e[m\]\w: "
fi

# Path
export PATH="$PATH:/usr/local/bin/:/opt/chefdk/bin:/opt/chefdk/embedded/bin/:$HOME/.rbenv/shims:$PATH"

# Add RVM to PATH for scripting
export PATH="$PATH:$HOME/.rvm/bin"

# MacPorts
if [ -f /data/mac ]; then
  export PATH="/opt/local/bin:/opt/local/sbin:$PATH"
fi

# aliases
if [ -f /data/projects/bash/.aliases ]; then
  source "/data/projects/bash/.aliases"
fi

# functions
if [ -f /projects/bash/.functions ]; then
  source "/data/projects/bash/.functions"
fi

# prodfile
if [ -f /data/projects/bash/.bash_profile ]; then
  source "/data/projects/bash/.bash_profile"
fi

# GE aliases
if [ -f /data/projects/ge_bash/.ge_bash_aliases ]; then
  source "/data/projects/ge_bash/.ge_bash_aliases"
fi

# GE functions
if [ -f /data/projects/ge_bash/.ge_bash_functions ]; then
  source "/data/projects/ge_bash/.ge_bash_functions"
fi

# Chefdk ruby
eval "$(chef shell-init bash)"
