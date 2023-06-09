# Flex on Ubuntu users
neofetch

# Lines configured by installation
HISTFILE=~/.cache/histfile
HISTSIZE=1000
SAVEHIST=1000
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/fernando/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

#export LANGUAGE="en_US.UTF-8"
#export LC_ALL="C"

# Enable colors and change prompt:
autoload -U colors && colors	# Load colors
PS1="%B%{$fg[red]%}[%{$fg[yellow]%}%n%{$fg[green]%}@%{$fg[blue]%}%M %{$fg[magenta]%}%~%{$fg[red]%}]%{$reset_color%}$%b "
setopt autocd		# Automatically cd into typed directory.
stty stop undef		# Disable ctrl-s to freeze terminal.
setopt interactive_comments

# Basic auto/tab complete:
autoload -U compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit
_comp_options+=(globdots)		# Include hidden files.

bindkey -v
export KEYTIMEOUT=1

# Use vim keys in tab complete menu:
bindkey -M menuselect 'h' vi-backward-char
bindkey -M menuselect 'k' vi-up-line-or-history
bindkey -M menuselect 'l' vi-forward-char
bindkey -M menuselect 'j' vi-down-line-or-history
bindkey -v '^?' backward-delete-char

# Alias
alias ll='ls -lh --color'
alias la='ls -alh --color'
alias cl='clear'
alias md='mkdir'
alias btw='neofetch'
alias reboot='loginctl reboot'
alias poweroff='loginctl poweroff'
alias suspend='loginctl suspend'
alias x='startx'
alias ra='ranger'
alias pac='doas pacman'
alias vi='nvim'
alias w='wget'
alias z='zathura'
alias viconf='$EDITOR ~/.config/nvim/init.vim'
alias cp='cp -r'
alias zshconf='$EDITOR ~/.config/zsh/.zshrc'

# Source specific aliases for this system (If exist)
[ -f "$HOME/.config/shell/shortcutrc" ] && source "$HOME/.config/shell/shortcutrc"
[ -f "$HOME/.config/shell/aliasrc" ] && source "$HOME/.config/shell/aliasrc"


# Exports
export PATH=$PATH:~/suckless/scripts
export PATH=$PATH:~/.local/bin
export BROWSER='librewolf'
export EDITOR='nvim'
export MANWIDTH=110

# Etc
#alias ranger='ranger --choosedir=$HOME/.rangerdir; LASTDIR=`cat $HOME/.rangerdir`; cd "$LASTDIR"'
