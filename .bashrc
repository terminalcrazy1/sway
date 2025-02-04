# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin/:" ]]
then
    PATH="$HOME/.local/bin/:$PATH"
fi
export PATH

if ! [[ "$LD_LIBRARY_PATH" =~ "$HOME/.local/lib64/:" ]]
then
    LD_LIBRARY_PATH="$HOME/.local/lib64/:$LD_LIBRARY_PATH"
fi
export LD_LIBRARY_PATH

# User specific aliases and functions
alias vi='vim -u ~/.virc -i NONE'
alias vim='vim -i NONE'
