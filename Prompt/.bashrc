# ~/.bashrc: executed by bash(1) for non-login shells.

# Note: PS1 and umask are already set in /etc/profile. You should not
# need this unless you want different defaults for root.
# PS1='${debian_chroot:+($debian_chroot)}\h:\w\$ '
# umask 022

# You may uncomment the following lines if you want `ls' to be colorized:
 export LS_OPTIONS='--color=auto'
 eval "`dircolors`"
 alias ls='ls $LS_OPTIONS'
 alias ll='ls $LS_OPTIONS -l'
# alias l='ls $LS_OPTIONS -lA'
#
# Some more alias to avoid making mistakes:
# alias rm='rm -i'
# alias cp='cp -i'
# alias mv='mv -i'

#export PS1=$TITLEBAR'\[\e[1;32m\]\u@\h:\w\[\e[$(($??7:0));37m\]\$\[\e[0;0m\] '

#export PS1='\[\e[01;37m\]\u@\[\e[0m\]\[\e[01;34m\]\h\[\e[0m\]\[\e[00;37m\]:\w\$\[\e[0m\] '
if [[ ${EUID} == 0 ]] ; then
                sq_color="\[\033[0;31m\]"
        else
                sq_color="\[\033[0;34m\]"
        fi

        PS1="$sq_color\$([[ ? != 0 ]] && echo \"\")[\[\033[01;37m\]\t$sq_color]\342\224\200[\[\033[01;37m\]\u@\h$sq_color]\342\224\200\342\224\200> \[\033[01;37m\]\W$sq_color $ \[\033[01;37m\]>>\\[\\033[0m\\] "

        unset sq_color

alias ls='ls --color'
alias gc='git commit -a'
alias gp='git push'

export TERM=xterm-256color
