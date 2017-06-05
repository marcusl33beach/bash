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

# Adding our Dragon friend.
if [ -f /usr/bin/cowsay ]; then
  dragon=`cowsay -f dragon Who dared to wake me up?`
  echo -e "\e[32m$dragon"
fi
