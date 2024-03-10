# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
#ZSH_THEME="robbyrussell"
ZSH_THEME="powerlevel10k/powerlevel10k"



plugins=(git branch colored-man-pages colorize command-not-found copypath copyfile emoji history encode64 safe-paste emoji-clock themes pj copybuffer zsh-autosuggestions zsh-syntax-highlighting docker ansible kubectl minikube terraform)

source $ZSH/oh-my-zsh.sh

# User configuration
# export MANPATH="/usr/local/man:$MANPATH"
# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='vi'
fi


# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh


#### my zhrc

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/danish/miniconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/danish/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/home/danish/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/danish/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<



# my aliases
alias yt="pipe-viewer"
alias mnt="sudo mkdir -p /run/media/danish/404 && sudo mount /dev/nvme0n1p1 /run/media/danish/404"
alias v="vim"
alias sv="sudo vim"
alias r="ranger"
alias bt="bluetoothctl"
alias tt='xinput set-prop "DELL08AF:00 06CB:76AF Touchpad" "libinput Tapping Enabled" 1 '
alias clip="xclip -sel clip"
alias b="bash"
alias n="nvim"
alias src="source /home/danish/.zshrc"
alias dimgid="bash Documents/.docker_imageid.sh"
alias xrandrc="xrandr --output HDMI-2 --auto --right-of eDP-1"
alias binc="~/.config/i3/scripts/brightness/increase.sh"
alias bdec="~/.config/i3/scripts/brightness/decrease.sh"
alias gs="git status"
alias ga="git add ."
alias gp="git push"


EXTEND="xrandr --output DP-1 --auto --right-of eDP-1"
SAME="xrandr --output DP-1 --auto --same-as eDP-1 "
alias extend=$EXTEND
alias same=$SAME


export VISUAL=vim;
export EDITOR=vim;

autoload -U +X bashcompinit && bashcompinit
complete -o nospace -C /usr/local/bin/terraform terraform

export PATH=$PATH:/home/danish/.local/share/JetBrains/Toolbox/scripts 
export TERM=xterm-256color

