# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Custom bash prompt
parse_git_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
export PS1="(\d \t) \u@\h \[\033[32m\]\w\[\033[33m\]\$(parse_git_branch)\[\033[00m\] $ "

# Add RVM to PATH for scripting
export PATH="$PATH:$HOME/.rvm/bin"

# Path
export PATH="$PATH:/usr/local/bin/:/opt/chefdk/bin:/opt/chefdk/embedded/bin/:$HOME/.rbenv/shims:$PATH"

# MacPorts Installer addition on 2015-05-20_at_09:46:07: adding an appropriate PATH variable for use with MacPorts.
export PATH="/opt/local/bin:/opt/local/sbin:$PATH"

# Some Ruby Gems requier this.
#export USE_SYSTEM_GECODE=1

. /data/cookbooks/dev-tools/bash_devtools.sh

# Add in aliases
if [ -f /data/projects/bash/.aliases ]; then
  source "/data/projects/bash/.aliases"
elif [ -f /data/.aliases ]; then
	source "/data/.aliases"
fi

# Add in functions
if [ -f /projects/bash/.functions ]; then
  source "/data/projects/bash/.functions"
elif [ -f /data/.functions ]; then
	source "/data/.functions"
fi

# Adding in my ge bash config
if [ -f /data/projects/ge_bash/.ge_bash_profile ]; then
  source "/data/projects/ge_bash/.ge_bash_profile"
elif [ -f /data/.ge_bash_profile ]; then
	source "/data/.ge_bash_profile"
fi

# aliases
if [ -f /data/projects/ge_bash/.ge_bash_aliases ]; then
  source "/data/projects/ge_bash/.ge_bash_aliases"
elif [ -f /data/.ge_bash_aliases ]; then
	source "/data/.ge_bash_aliases"
fi

# functions
if [ -f /data/projects/ge_bash/.ge_bash_functions ]; then
  source "/data/projects/ge_bash/.ge_bash_functions"
elif  [ -f /data/.ge_bash_functions ]; then
  source "/data/.ge_bash_functions"
fi

# Chefdk ruby
eval "$(chef shell-init bash)"
