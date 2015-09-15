# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

# try loading git bash completion
if [ -f ~/.git-completion.bash ]; then
	. ~/.git-completion.bash
fi

alias ebash="joe ~/.bash_profile;source ~/.bash_profile;echo update bash_profile"
alias gfo="git fetch origin --prune"

# git
function git_branch {
    ref=$(git symbolic-ref HEAD 2> /dev/null) || return;
    echo "("${ref#refs/heads/}") ";
}

# PS1="[\[\033[1;32m\]\w\[\033[0m\]] \[\033[0m\]\[\033[1;36m\]\$(git_branch)\[\033[0;33m\]\$(git_since_last_commit)\[\033[0m\]$ " 
PS1="\[\033[33m\]\u\[\033[37m\]:[\[\033[1;32m\]\w\[\033[0m\]] \[\033[0m\]\[\033[1;36m\]\$(git_branch)\[\033[0;33m\]\[\033[0m\]$ "

# User specific environment and startup programs

export PATH
