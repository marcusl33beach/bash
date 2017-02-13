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
