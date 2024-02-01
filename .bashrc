# If not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac

export PATH="$PATH:/usr/local/bin:$HOME/.local/bin:$HOME/.cargo/bin"
export SCRIPTDIR=$HOME/.local/share/scriptdeps
#export STARSHIP_CONFIG=$HOME/.config/starship/starship.toml

# don't put duplicate lines or lines starting with space in the history.
HISTCONTROL=ignoreboth

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=2000
HISTFILESIZE=5000

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# system aliases
alias svim="sudo vim"
alias ls="lsd"
alias ll="lsd -l"
alias la="lsd -a"
alias lal="lsd -al"
alias pacman="sudo pacman"
alias neofetch="fastfetch"
alias ..="cd .."
alias sstat="sudo systemctl status"
alias senable="sudo systemctl enable"
alias srestart="sudo systemctl restart"
alias sstart="sudo systemctl start"
alias arx='/usr/bin/git --git-dir="$HOME/.arxfiles/" --work-tree="$HOME"'

# setup the starship prompt
#eval "$(starship init bash)"

# give me squirtle in my terminal bish
#squirtle

# enable programmable completion features
if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi


export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
. "$HOME/.cargo/env"
