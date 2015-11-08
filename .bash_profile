# Custom bash prompt
export PS1="\e[37m\w \u \$(date +%k:%M:%S) >\e[m \$ \n "

# Path
export PATH="$PATH:/usr/local/bin/:/opt/chefdk/embedded/bin/:$HOME/.rbenv/shims:$PATH"

# MacPorts Installer addition on 2015-05-20_at_09:46:07: adding an appropriate PATH variable for use with MacPorts.
export PATH="/opt/local/bin:/opt/local/sbin:$PATH"

# Custom Aliases
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias l='ls -la'
alias ll='ls -l'
alias h='history'
alias free='free -m'
alias dh='df -h'
alias vd="vagrant destroy -f"
alias vu="vagrant up"
alias vs="vagrant status"
alias vdu="vagrant destroy -f && vagrant up"
alias vssh="vagrant ssh"
alias kc='kitchen converge'
alias kd='kitchen destroy'

# Adding in my ge bash config
if [ -f /projects/ge_bash/.ge_bash_profile ]; then
  source "/projects/ge_bash/.ge_bash_profile"
fi