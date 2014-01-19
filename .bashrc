# ~/.bashrc: executed by bash(1) for non-login shells.

Fred='\e[0;31m'
FRED='\e[1;31m'
FBOLD='\e[1m'
Fblue='\e[0;34m'
FBLUE='\e[1;34m'
UNDER='\e[4m'
Fcyan='\e[0;36m'
FCYAN='\e[1;36m'
FBLACK='\e[0;30m'
FGREY='\e[1;30m'
Fwhite='\e[0;37m'
FWHITE='\e[1;37m'
NC='\e[0m'

# Setup the EDITOR
export EDITOR=/usr/bin/vim

# Enable ssh-add
eval "$(ssh-agent)" > /dev/null

# PROMPT
# First, see if we are in any GIT repos (to display the branch)
# we are also display a utf8 branch symbol here
#if [ -d .git ]; then
    #GITBRANCH="\\\\$(date && [ -d .git ] && echo -n $'\u2446'" " && git branch | grep \* | cut -d \  -f 2)"
#fi
echo $GITBRANCH
if [ $UID -eq 0 ]; then
	# Change color of prompt for root
    export PS1="\[${UNDER}\]\u\[${FBLUE}\]@\h:\w\[${NC}\] $GITBRANCH"'\$'"\[${NC}\] "
else
    export PS1="\u\[${FBLUE}\]@\h:\w\[${NC}\] $GITBRANCH"'\$ '
fi
umask 022

set -o vi

PATH=$PATH:/root/bin:/home/dev/scripts

# HISTORY
export HISTFILESIZE=5000

# ALIASES
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
