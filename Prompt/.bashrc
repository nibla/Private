if [[ ${EUID} == 0 ]] ; then
		sq_color="\[\033[0;31m\]"
	else		
		sq_color="\[\033[0;34m\]"
	fi

	PS1="$sq_color\342\224\214\342\224\200\$([[ \$? != 0 ]] && echo \"\")[\[\033[01;37m\]\t$sq_color]\342\224\200[\[\033[01;37m\]\u@\h$sq_color]\n\342\224\224\342\224\200\342\224\200> \[\033[01;37m\]\W$sq_color $ \[\033[01;37m\]>>\\[\\033[0m\\] "

	unset sq_color

alias ls='ls --color'

export TERM=xterm-256color
