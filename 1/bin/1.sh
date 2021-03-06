#!/bin/bash

# vim: set fileencoding=utf-8 :

##  Ahmed Bani

msg() {
    printf '%b\n' "$1" >&2
}


success() {
    msg "\e[32m[✔]\e[0m ${1}${2}"
}


error() {
    msg "\e[31m[✘]\e[0m ${1}${2}"
}


debug() {
    if [ "$debug_mode" -eq '1' ] && [ "$ret" -gt '1' ]; then
      msg "An error occured in function \"${FUNCNAME[$i+1]}\" on line ${BASH_LINENO[$i+1]}, we're sorry for that."
    fi
}


wWw_diff() {
    diff -y <(echo "$1") <(echo "$2") | vim - ;
}


success() {
    msg "\e[32m[✔]\e[0m ${1}${2}";
}


wwww() {
    pygmentize $1 | less -N;
}


w() {
    clear
    DHOME=$(find ~/ -type l -exec basename {} \;)
    success "Symlinks at HOME = " "$(echo $DHOME | wc -l)"

    ZSRC=$(find ~/zdotfiles/link -exec basename {} \;);
    success "Dotfiles at zdotfiles/link = " "$( echo $ZSRC | wc -l )";
}

cmdfu() {
    curl "http://www.commandlinefu.com/commands/matching/$(echo "$@" | sed 's/ /-/g')/$(echo -n $@ | base64)/plaintext" --silent | vim -R - ;
}

setxkbmap -option grp:switch,grp:alt_shift_toggle,grp_led:scroll us,ar
setxkbmap -option ctrl:nocaps

alias "wWw___eeasystroke"="asystroke -c ~/zdotfiles/link/.easystroke"
alias 'wWw__acs'='apt-cache search'
alias 'wWw___acsh'='apt-cache show'

alias "ww"="vim"
#alias 'wW'='ls -RlhFAa | egrep ">" | wc -l'

alias 'wi'='sudo apt-get install'
alias 'www'='python ~/zdotfiles/5/ranger-1.6.1/ranger.py'

alias 'wwwww'='alias'


WWWWWWW_reboot() {
    sudo reboot;
}



alias -g wv='| vim -'
alias -g 'H'="--help"

alias -g G='| grep'
alias "wW_zsh"="zsh"
alias "ww_bashrc"="vim $HOME/.bashrc"
alias 'wwww'="pygmentize"
alias 'agg'='sudo apt-get update && sudo apt-get upgrade'
