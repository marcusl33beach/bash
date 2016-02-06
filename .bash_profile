# Custom bash prompt
export PS1="\e[37m\w \u \$(date +%k:%M:%S) >\e[m \$ "

# Path
export PATH="$PATH:/usr/local/bin/:/opt/chefdk/embedded/bin/:$HOME/.rbenv/shims:$PATH"

# MacPorts Installer addition on 2015-05-20_at_09:46:07: adding an appropriate PATH variable for use with MacPorts.
export PATH="/opt/local/bin:/opt/local/sbin:$PATH"


. /data/cookbooks/dev-tools/bash_devtools.sh

# Add in aliases
if [ -f /data/projects/bash/.aliases ]; then
  source "/data/projects/bash/.aliases"
fi

# Add in functions
if [ -f /projects/zsh/.zsh_functions ]; then
  source "/data/projects/bash/.functions"
fi

# Adding my ge config

# Adding in my ge bash config
if [ -f /data/projects/ge_bash/.ge_bash_profile ]; then
  source "/data/projects/ge_bash/.ge_bash_profile"
fi

# aliases
if [ -f /data/projects/ge_bash/.ge_bash_aliases ]; then
  source "/data/projects/ge_bash/.ge_bash_aliases"
fi

# functions
if [ -f /data/projects/ge_bash/.ge_bash_functions ]; then
  source "/data/projects/ge_bash/.ge_bash_functions"
fi
