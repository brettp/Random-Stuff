# .bash_profile
# Colors
##############################
LGRAY="\\033[1;30m"
LRED="\\033[1;31m"
LGREEN="\\033[1;32m"
LYELLOW="\\033[1;33m"
LBLUE="\\033[1;34m"
LPURPLE="\\033[1;35m"
LCYAN="\\033[1;36m"
LWHITE="\\033[1;37m"
DGRAY="\\033[0;30m"
DRED="\\033[0;31m"
DGREEN="\\033[0;32m"
DYELLOW="\\033[0;33m"
DBLUE="\\033[0;34m"
DPURPLE="\\033[0;35m"
DCYAN="\\033[0;36m"
DWHITE="\\033[0;37m"
NOCOLOR="\\033[0m"

# Print out some stuff
#############################
clear
echo -en "$LBLUE"
echo "_________________________________________________________________________"
echo -en "$LCYAN"
date
echo -en "$NOCOLOR"

# User specific environment and startup programs
PATH=/opt/local/libexec/gnubin:$HOME/bin:$PATH:/usr/local/mysql/bin:/opt/local/bin

export PATH

# do the bashrc thing
if [ -e ~/.bashrc ] ; then
. ~/.bashrc
else
echo -en "${LRED}"
echo "* * * * * * * * * * * * * * * *"
echo "* Warning: .bashrc not found! *"
echo "* * * * * * * * * * * * * * * *"

fi

if [ -x /usr/games/fortune ] ; then
echo -en "$DPURPLE"
echo
/usr/games/fortune
echo
fi 
echo -e "${LBLUE}Welcome to: ${LRED}$HOSTNAME${LBLUE}"
[ -r /etc/redhat-release ] && cat /etc/redhat-release
uname -s -r -m -p -i
echo -en "$LGREEN"
uptime 

echo -en "$LBLUE"
echo "_________________________________________________________________________"
# change color to normal
echo -en "$NOCOLOR"
echo

unset USERNAME
# todo why is this called twice?
# Get the aliases and functions
if [ -f ~/.bashrc ]; then
    . ~/.bashrc
fi

if [ -d $HOME/lib/perl5 ]; then
PERL5LIB=${PERL5LIB:+$PERL5LIB:}$HOME/lib/perl5:/nfshome/leppert.5/nfshome/leppert.5/lib/perl5 
fi
MANPATH=${MANPATH:+$MANPATH:}$HOME/share/man
export MANPATH PERL5LIB

if [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
fi

if [ -f /opt/local/etc/bash_completion ]; then
    . /opt/local/etc/bash_completion
fi
