# Use color
autoload -Uz colors
colors

# disable r command
disable r

# alias
alias ls='ls -FG'
alias ll='ls -FG -l'
alias la='ls -FG -a'
alias lla='ls -FG -la'
alias vz='vim ~/.zshrc'
alias vv='vim ~/.vimrc'
alias so='source'

alias chrome='open /Applications/Google\ Chrome.app'

alias py='python'
alias py3='python3'
alias va='source venv/bin/activate'
alias da='deactivate'

# Don't logout with ctl+D
setopt IGNOREEOF

# Complement
autoload -Uz compinit
compinit

zstyle ':completion:*:default' menu select=1

# Complement uppercase letter
zstyle 'completion:*' matcher-list 'm:{a-z}={A-Z}'

# Omit CD command
setopt auto_cd

# Correct command mistakes
setopt correct

# Run ls command after cd command
chpwd() { ls }

# Desable beep sound
setopt no_beep

# prompt
PROMPT="%(?.%{${fg[green]}%}.%{${fg[red]}%})%n${reset_color} ${fg[blue]}%d${reset_color}
> "

# git
autoload -Uz vcs_info
setopt prompt_subst
zstyle ':vcs_info:git:*' check-for-changes true
zstyle ':vcs_info:git:*' stagedstr "%F{yellow}!"
zstyle ':vcs_info:git:*' unstagedstr "%F{red}+"
zstyle ':vcs_info:*' formats "%F{green}%c%u[%b]%f"
zstyle ':vcs_info:*' actionformats '[%b|%a]'
precmd () { vcs_info }
RPROMPT=$RPROMPT'${vcs_info_msg_0_}'

# Execute after login
ls

