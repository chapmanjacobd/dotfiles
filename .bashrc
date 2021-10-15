# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific environment
PATH="$HOME/.local/bin:$HOME/bin:$HOME/.pulumi/bin:$PATH"
export PATH
# User specific aliases and functions
if [ ! -h $HOME/.xsession-errors ]; then
 /bin/rm $HOME/.xsession-errors
 ln -s /dev/null $HOME/.xsession-errors
fi
#export PATH="$HOME/bin:$PATH"
#export GOPATH=$HOME/go
#export VISUAL=nano
#export EDITOR="$VISUAL"

###-tns-completion-start-###
if [ -f /home/xk/.tnsrc ]; then
    source /home/xk/.tnsrc
fi
###-tns-completion-end-###

export LESSCHARSET=utf-8
shopt -s histappend
shopt -s cmdhist
HISTCONTROL=ignoredups
export HISTIGNORE="&:ls:[bf]g:exit"

# Settings for interactive shell only inside this block
if [[ $- == *i* ]]
then

    #Prevent Ctrl+S Freezing things
    stty -ixon

    shopt -s cdspell
    bind "set completion-ignore-case on" # note: bind used instead of sticking these in .inputrc
    bind "set bell-style none" # no bell
    bind "set show-all-if-ambiguous On" # show list automatically, without double tab

    complete -r cd

    cd d/
fi
