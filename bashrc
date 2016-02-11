UNAME=$(uname -s)

# Source global definitions
if [[ -f /etc/bashrc ]]; then
	. /etc/bashrc
fi

# Source .profile, if it exsists
#if [[ -f ~/.profile ]]; then
#    . ~/.profile
#fi

 # Source .zsh files, if it exists
 if [[ -d ~/.zsh ]]; then
     . ~/.zsh/checks.zsh
     . ~/.zsh/alias.zsh
     . ~/.zsh/functions.zsh
     . ~/.zsh/exports.zsh
 fi

# Add brew bash completion
if  [[ "Darwin" == "$UNAME" ]]; then
    if [[ -f $(brew --prefix)/etc/bash_completion ]]; then
        . $(brew --prefix)/etc/bash_completion
    fi
fi

#eval "$(thefuck-alias)"

# Modify bash prompt
##export PS1="[\d \t \[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\w\[\033[m\]] \$

# Initialize pyenv
if command -v pyenv >/dev/null 2>&1; then eval "$(pyenv init -)"; fi

# Initialize rbenv
if command -v rbenv >/dev/null 2>&1; then eval "$(rbenv init -)"; fi

# Source nvm
[ -s "${NVM_DIR}/nvm.sh" ] && . "${NVM_DIR}/nvm.sh"

export PATH="${PATH}:${HOME}/bin"
