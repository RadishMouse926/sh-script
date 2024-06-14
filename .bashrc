#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '

force_color_prompt=yes

alias ww='waybar'

alias logout='hyprctl dispatch exit'
alias wallp='bash ~/bashy/set-wallpaper.sh '

#shortcuts to config files
alias ewbjson='nvim ~/.config/waybar/config.jsonc'	#waybar json
alias ehyp='nvim ~/.config/hypr/hyprland.conf'	#hyprland config
alias ebrc='nvim ~/.bashrc'	#.bashrc
alias sbrc='source ~/.bashrc'	#save .bashrc (source .bashrc)

alias neofetch='fastfetch'
alias neof='fastfetch'

alias date='date "+%Y-%m-%d %A %T %Z"'

#force nvim as text editor
alias cat='bat'
alias vim='nvim'
alias svim='sudo nvim'

#qol changes to file commands
alias cp='cp -i'
alias mv='mv -i'
alias rm='trash -v'		#trash instead of perma delete
alias mkdir='mkdir -p'
alias ping='ping -c 3'
alias pacman='sudo pacman'
alias home='cd ~'

#ls commands
alias ls='ls -aFh --color=always'
alias ll='ls -Fls'		#long listing
alias lw='ls -xAh'		#wide listing

#tree commands
alias tree='tree -CAhF --dirsfirst'
alias treed='tree -CAFd'	#list dirs

#search-type commands
alias h="history | grep "	#search in history
alias f="find . | grep "	#search in current folder

#ls after cd
cd ()
{
	if [ -n "$1" ]; then
		builtin cd "$@" && ls
	else
		builtin cd ~ && ls
	fi
}

#screenshots
alias ss='grim -g \"$(slurp)\" - | wl-copy'

#starship
