PYTHONPATH=/Users/carolclark/Library/CCDev/bin/python; export PYTHONPATH
if [[ $(echo ":$PATH:" | grep "CCDev/bin") = "" ]] ; then PATH="$PATH:$CCDev/bin:$CCDev/bin/python:/usr/local/mysql/bin:"; fi
DEV=/Users/carolclark/Dev; export DEV
CCDev=/Users/carolclark/Library/CCDev; export CCDev
alias tsp='if [[ $(echo ":$PATH:" | grep "CCDev") = "" ]] ; then PATH="$PATH:$CCDev/bin:$CCDev/bin/Sharness:$CCDev/bin/python:"; export PATH; echo "$PATH"; fi'
echo "${PATH}"
#SHUnit=/Users/carolclark/Library/CCDev/shunit/src/shunit2; export SHUnit

VISUAL="/usr/bin/emacs"; export VISUAL
CLICOLOR=1; export CLICOLOR
LSCOLORS=exfxcxdxbxegedabagacad; export LSCOLORS
# output colors
RESET=$(tput sgr0)
BLACK=$(tput setaf 0)
LT_BLACK=$(tput setaf 8)
GRAY=$(tput setaf 7)
LT_GRAY=$(tput setaf 15)

HUBRING='/Volumes/Servers/jb/HubRing/hub-2018.4.11196'
YOUTRACK='/Volumes/Servers/jb/YouTrack/youtrack-2018.4.49852'
UPSOURCE='/Volumes/Servers/jb/UpSource/upsource-2017.3.2593'
TEAMCITY='/Volumes/Servers/jb/TeamCity/TeamCity'
YTHUB='carols-imac-2.local:8080/hub'

parse_git_branch() { 
	git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}

export PS1="\! \033[1;32m\W\033[1;33m\$(parse_git_branch)\[\033[00m\]\033[0m $ "

alias mysql='/usr/local/mysql/bin/mysql'
alias mysqladmin='/usr/local/mysql/bin/mysqladmin'
alias hubring='/Volumes/Servers/jb/HubRing/hub-ring-bundle-2017.4.7885/bin/hub.sh '
alias youtrack='/Volumes/Servers/jb/YouTrack/youtrack-2018.4.49852/bin/youtrack.sh'
alias upsource='/Volumes/Servers/jb/UpSource/upsource-2017.2.2197/bin/upsource.sh '
alias teamcity='/Volumes/Servers/jb/TeamCity/TeamCity/bin/runall.sh '
alias sbu='bu=/Volumes/Mavericks-1/JetBrains_backups'
alias gaa='git add --all'
alias gai='git add --interactive'
alias gap='git add --patch'
alias gl='git lg '
alias gll='git log '
alias gs='git status '
alias gsh='git show '
alias gshn='git show --name-status '
alias gd='git difftool '
alias gdn='git difftool --name-status '
alias gdc='git difftool --cached '
alias gdcc='git difftool --cached --check'
alias gft='git fetch '
alias gfo='git fetch origin '
alias gm='git mergetool '
alias gmnf='git merge --no-ff '
alias gb='git branch '
alias gbn='git branch --no-merged '
alias gbg='git branch | grep -n "[a-z,A-Z]" > ~/Library/CCDev/tmp/_GBR_; cat ~/Library/CCDev/tmp/_GBR_; echo -n "Select: "; read lineno; tb=$(cat ~/Library/CCDev/tmp/_GBR_ | grep "$lineno:" | cut -c 5-); echo "tb: $tb"'
alias gbs='for k in `git branch | sed s/^..//`; do echo -e `git log -1 --pretty=format:"%Cgreen%ci %Cblue%cr%Creset" "$k"`\\t"$k"; done | sort -r'
alias gbas='for k in `git branch -a | sed s/^..//`; do echo -e `git log -1 --pretty=format:"%Cgreen%ci %Cblue%cr%Creset" "$k"`\\t"$k"; done | sort -r'
alias gba='for k in `git branch -a | sed s/^..//`; do echo -e `git log -1 --pretty=format:"%Cgreen%ci %Cblue%cr%Creset" "$k"`\\t"$k"; done'
alias gcb='cb=$(gb | grep "*" | cut -c 3-); echo cb: $cb'
alias gco='git checkout '
alias gcmf='git commit -F ${HOME}/Library/CCDev/tmp/msg.txt'
alias gcsm='cat "${HOME}/Library/CCDev/tmp/msg.txt"'
alias cdsy='osascript "/Users/carolclark/Library/Scripts/AppCode/TechnicalDocs_syntax.scpt"'
alias cdln='osascript "/Users/carolclark/Library/Scripts/AppCode/TechnicalDocs_links.scpt"'
alias filemerge='/Applications/Xcode.app/Contents/Applications/FileMerge.app/Contents/MacOS/FileMerge'
alias gbu='ghubUtil --backupIssues'
alias cdsy='osascript "/Users/carolclark/Library/Scripts/AppCode/TechnicalDocs_syntax.scpt"'
alias cdln='osascript "/Users/carolclark/Library/Scripts/AppCode/TechnicalDocs_links.scpt"'
alias filemerge='/Applications/Xcode.app/Contents/Applications/FileMerge.app/Contents/MacOS/FileMerge'
alias gbu='ghubUtil --backupIssues'
alias mp='open "http://carols-imac-2.local:8080/hub/projects"'

alias buildCdoc='Docs/Cdoc/Cdoc_install.ksh ~/Dev/Accessor/Docs Cdoc install'
alias cdbd='Docs/Cdoc/cdoc_install.ksh /Users/carolclark/Dev/Accessor/Docs Cdoc install'

alias buildCdoc='Docs/Cdoc/Cdoc_install.ksh ~/Dev/DevOps/Docs Cdoc install'
alias cdbd='Docs/Cdoc/cdoc_install.ksh /Users/carolclark/Dev/DevOps/Docs Cdoc install'

alias buildCdoc='Docs/Cdoc/Cdoc_install.ksh ~/Dev/DevSupport/Docs Cdoc install'
alias cdbd='Docs/Cdoc/cdoc_install.ksh /Users/carolclark/Dev/DevSupport/Docs Cdoc install'

			
#export PS1="\u@\h \[\033[32m\]\w\[\033[33m\]\$(parse_git_branch)\[\033[00m\] $ "
#export PS1="\033[1;32m\W \[\033[32m\]\w\[\033[33m\]\$(parse_git_branch)\[\033[00m\] $ "
#export PS1="\033[1;32m\W\033[1;33m\$(parse_git_branch)\[\033[00m\] $\033[0m $ "
#`alias gb\
#for k in `git branch | sed s/^..//`; do echo -e `git log -1 --pretty=format:"%Cgreen%ci %Cblue%cr%Creset" "$k"`\\t"$k"; done | sort -r
#git branch | echo $(grep -n "[a-z,A-Z]") | echo -n "Select: "; read lineno; tb=$(cat ~/Library/CCDev/tmp/gitbranches | grep "$lineno:" | cut -c 5-); echo tb: $tb'
#alias gbg='git branch | echo $(grep -n "[a-z,A-Z]") | echo -n "Select: "; read lineno; tb=$(cat ~/Library/CCDev/tmp/gitbranches | grep "$lineno:" | cut -c 5-); echo tb: $tb'
# real one, but not updating (exported?) 	
# get branch or path: [ $(git rev-parse --is-inside-work-tree) ] && echo $(git branch | grep '*' | cut -c 3-) || echo "\w"
# we had a version that changed, but PS1=$(echo "$(pwd) $ ") does not work
#  PS1="! $(tput setaf 3)\$(git branch | grep '*' | cut -c 3-)$(tput setaf 12) $ $(tput sgr0)"
#    works and changes appropriately, but fails if directory is not in a git repo, and does not calculate its size correctly

#show colors:c=0; p=1; while [ $c -lt 256 ]; do; tput setaf $c; printf '%4s' "$c"; tput setab $c; echo -n "      "; tput sgr0; if [ $(( ($p/8)*8 )) = $p ] ; then echo ""; else; echo -n "  "; fi; c=$(expr $c + 1); p=$(expr $p + 1); done; echo ""

#/System/Library/Frameworks/CoreServices.framework/Versions/A/Frameworks/CarbonCore.framework/Headers/MacErrors.h

#PS1="\033[1;33m$LOGNAME !\033[0m \033[1;34m$\033[0m "
#PS1="\#! $(tput setaf 6)$LOGNAME$(tput sgr0) $ " 
#PS1="\#! $(tput setaf 3)\$(git rev-parse --is-inside-work-tree | git branch | grep '*' | cut -c 3-)$(tput setaf 12) $ $(tput sgr0)"; export PS1
#PS1="\#! $(tput setaf 3)\$(git branch | grep '*' | cut -c 3-)$(tput setaf 12) $ $(tput sgr0)"; export PS1

#RED=$(tput setaf 9)
#DK_RED=$(tput setaf 1)
#GREEN=$(tput setaf 10)
#DK_GREEN=$(tput setaf 2)
#YELLOW=$(tput setaf 11)
#DK_YELLOW=$(tput setaf 3)
#BLUE=$(tput setaf 12)
#DK_BLUE=$(tput setaf 4)
#PINK=$(tput setaf 13)
#DK_PINK=$(tput setaf 5)
#CYAN=$(tput setaf 14)
#DK_CYAN=$(tput setaf 6)

#PS1="\e[0;36m\h\e[m \e[0;33m\w/\e[m \e[0;31m\n\$ →\e[m  "
#PS1=$(printf "\#! $(tput setaf 3)%30s$(tput setaf 12) $ $(tput sgr0)" "$(git rev-parse --is-inside-work-tree | git branch | grep '*' | cut -c 3-)"); export PS1
#PS1=$(printf "\#!  \e[0;33m%30s\e[m \e[0;36m$\e[m " "$(git rev-parse --is-inside-work-tree) && git branch | grep '*' | cut -c 3-)"); export PS1
#PS1=$(printf "\#\e[0;33m%30s\e[m \e[0;36m$\e[m " "$([ git rev-parse --is-inside-work-tree ] && $(git branch | grep '*' | cut -c 3-) || \w)"; export PS1
#PS1=$(printf "\#\e[0;33m%30s\e[m \e[0;36m$\e[m " "$([ git rev-parse --is-inside-work-tree ] && git branch | grep '*' | cut -c 3- || \w)"; export PS1
#PS1="\e[0;36m\h\e[m \e[0;33m\w/\e[m \e[0;31m\n\$ →\e[m  "
#Information:Building target 'Developer' from 'Developer' with configuration 'Debug' for architecture 'x86_64' using 'OS X 10.10' sdk
