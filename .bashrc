# ~/.bashrc: executed by bash(1) for non-login shells.

red='\e[0;31m'
RED='\e[1;38m'
CHERRY='\e[1;31m'
BOLD='\e[1;39m'
blue='\e[0;34m'
BLUE='\e[1;34m'
UNDER='\e[1;38m'
cyan='\e[0;36m'
CYAN='\e[1;36m'
BLACK='\e[0;30m'
GREY='\e[1;30m'
NC='\e[0m'

export EDITOR=/usr/bin/vim
export PS1="\[${UNDER}\]\[${NC}\]\[${RED}\]\u\[${BLUE}\]@\h:\w\[${NC}\] "'\$ '
umask 022

set -o vi

PATH=$PATH:/root/bin:/home/dev/scripts

# You may uncomment the following lines if you want `ls' to be colorized:
export LS_OPTIONS='--color=auto'
eval "`dircolors`"
alias ls='ls $LS_OPTIONS'
alias ll='ls $LS_OPTIONS -l'
alias la='ls $LS_OPTIONS -A'
alias lla='ls $LS_OPTIONS -lA'
alias aptsearch='apt-cache search'
alias vi='vim'
alias cdtflux='cd /mnt/store1/tmp/admin'
alias mp4box='MP4Box'
alias cdvid='cd /mnt/vault/MulTiMediA/video-tmp'
alias cdffmpeg='cd /home/dev/ffmpeg'
alias cdmplayer='cd /home/dev/mplayer'
alias cdscripts='cd /home/dev/scripts'
alias cddev='cd /home/dev'
alias cdvidtmp='cd /mnt/vault/MulTiMediA/video-tmp'
alias cdvault='cd /mnt/vault'
alias cdmovies='cd /mnt/vault/MulTiMediA/MOvieS'
alias cdnfs='cd /mnt/nfs'
alias cdmusic='cd /mnt/vault/MulTiMediA/MuZik'
alias cdscripts='cd /home/dev/scripts'
#
# Some more alias to avoid making mistakes:
# alias rm='rm -i'
# alias cp='cp -i'
# alias mv='mv -i'
#alias cdripping='cd /mnt/lonestar/MultiMedia/ripping'
