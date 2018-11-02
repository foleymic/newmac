export JAVA_HOME=`/usr/libexec/java_home -v 1.8`

source ~/.git-completion.bash
source ~/.git-prompt.sh
#PS1='[\u@\h \W$(__git_ps1 " (%s)")]\$ '
PS1='\W$(__git_ps1 "(%s)")\$ '

#PS1="\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\w\[\033[m\]\$ "
CLICOLOR=1
LSCOLORS=ExFxBxDxCxegedabagacad

alias ls='ls -GFh'
alias lsl='ls -la'
alias la='ls -la'
alias ll='ls -l'
#########################################################
########    MANHATTAN DOCKER HELPER FUNCTIONS    ########
###################    START     ########################
alias easybutton='/Users/MFoley/MANH/longshore/easybtn.sh'
alias eb='/Users/MFoley/MANH/longshore/easybtn.sh'
alias dm='docker-machine'
alias dmconn='dmconnfunc'
alias dcnet='docker-compose --x-networking --x-network-driver overlay'
alias dockerstop='docker stop $(docker ps -a -q)'
alias dockerkill='docker kill $(docker ps -a -q)'
alias dockerrm='docker rm $(docker ps -a -q)'
alias dclean='dockerstop && dockerrm'
alias dockerrmc="docker ps -a | grep ' ago' | awk '{print $1}' | xargs docker rm"
alias dockerrminone='docker images | grep "<none>" | awk "{print $3}" | xargs docker rmi -f'
alias dps="docker ps --format 'table {{.ID}}\t{{.Names}}\t{{.Image}}\t{{.Status}}\t{{.RunningFor}}'"
alias dpsa="docker ps -a --format 'table {{.ID}}\t{{.Names}}\t{{.Image}}\t{{.Status}}\t{{.RunningFor}}'"
alias dockerrminone="docker images | grep '<none>' | awk '{print $3}' | xargs docker rmi -f"
alias dockerrmidangling='docker rmi $(docker images --filter "dangling=true" -q --no-trunc)'
###################    END     ##########################

export PATH=$PATH:/Users/MFoley/bin

alias dinspect="docker inspect -f '{{.Status}}'"

alias nano='/usr/local/Cellar/nano/3.1/bin/nano --smooth --tabstospaces --linenumbers'