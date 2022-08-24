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



plugins=(git branch colored-man-pages colorize command-not-found copypath copyfile emoji history encode64 safe-paste emoji-clock themes pj copybuffer zsh-autosuggestions zsh-syntax-highlighting )

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
alias mnt="sudo mkdir -p /run/media/danish/404 && sudo mount /dev/nvme0n1p4 /run/media/danish/404"
alias v="vim"
alias sv="sudo vim"
alias r="ranger"
alias bt="bluetoothctl"
alias tt='xinput set-prop "SynPS/2 Synaptics TouchPad" "libinput Tapping Enabled" 1'
alias clip="xclip -sel clip"
alias b="bash"
alias jenkins="java -jar /home/danish/jenkins/jenkins.war > /home/danish/jenkins/logs/logs.txt"
alias n="nvim"
alias src="source /home/danish/.zshrc"
alias untracked-size="git diff --binary | wc -c"
alias staging-size="git diff --cached --binary | wc -c"

# directories
alias s5="cd /run/media/danish/404/Drives/MSDS/Classroom/Semester5"
alias drives="cd /run/media/danish/404/Drives"
alias vidmusic="cd /run/media/danish/404/Music/Video"
alias aws-course="cd /run/media/danish/404/Drives/GoogleDrive/Documents/AWS"
alias js="cd /run/media/danish/404/Drives/GoogleDrive/Documents/JS"
alias lulzsec="cd /run/media/danish/404/Drives/GoogleDrive/lulzsec"
alias lectures="/run/media/danish/404/Lectures"
alias mern="/run/media/danish/404/Lectures/Web/MERN"
alias db="/run/media/danish/404/Lectures/DB"
alias py="cd /run/media/danish/404/Drives/GoogleDrive/Documents/Python"
alias devops="/run/media/danish/404/Drives/GoogleDrive/Documents/DevOps"


export VISUAL=vim;
export EDITOR=vim;
# export CONFLUENT_HOME=/home/danish/confluent-7.1.1
# export PATH="${CONFLUENT_HOME}/bin:$PATH"
# export PATH=$PATH:$CONFLUENT_HOME/bin

autoload -U +X bashcompinit && bashcompinit
complete -o nospace -C /usr/local/bin/terraform terraform

#export PATH=$PATH:/home/danish/bin
#export JAVA_HOME=/usr/lib/jvm/java-8-openjdk

#source '/home/danish/lib/azure-cli/az.completion'
export PATH=$PATH:/home/danish/.local/share/JetBrains/Toolbox/scripts 
