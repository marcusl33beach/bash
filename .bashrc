# Custom bash prompt
if [ -f /data/mac ]; then
  export PS1="\[\e[36m\]Mac \[\e[m\]\w: "
elif [ -f /data/ws ]; then
  export PS1="\[\e[36m\]Workstation \[\e[m\]\w: "
else
  export PS1="\[\e[36m\]Computer \[\e[m\]\w: "
fi

# Path export
export PATH="$PATH:/usr/local/bin/:/opt/chefdk/bin:/opt/chefdk/embedded/bin/:$HOME/.rvm/bin:$HOME/.rbenv/shims:$PATH"

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

# Chefdk ruby
eval "$(chef shell-init bash)"

. /data/dev-tools/bash_devtools.sh
source ~/source_file
