alias gitcbr="git  branch | grep '* ' | cut -c 3-"
alias gitcbc="gitcbr | xclip -selection clipboard"
alias gitcb="gitcbr; gitcbc"
alias gits="git status"

alias gitcbr="git  branch | grep '* ' | cut -c 3-"
alias gitcbc="gitcbr | xclip -selection clipboard"
alias gitcb="gitcbr; gitcbc"
alias gits="git status"

alias docker-stop-all-containers="docker ps -a -q | xargs -n 1 docker stop"
# alias docker-rm-stopper-containers="docker rm $(docker ps -a -q)"
alias docker-rm-stopper-containers="docker ps -a -q | xargs -n 1 docker rm -f"
# alias docker-rm-all-images="docker rmi $(docker images -q)"
alias docker-rm-all-images="docker images -q | xargs -n 1 docker rmi -f"
# alias docker-rm-untagged-images="docker rmi $(docker images | grep '^<none>' | awk '{print $3}')"
alias docker-rm-untagged-images="docker images | grep '<none>' | awk '{print $3}' | xargs -n 1 docker rmi -f"
alias myip="ifconfig | grep 192"

hrailsc() {
        heroku run rails c --app "$1"
}
hlogs() {
        heroku logs --tail --app "$1"
}


# History
export HISTCONTROL=ignoredups:erasedups  # no duplicate entries
shopt -s histappend                      # append to history, don't overwrite it
export HISTSIZE=-1
export HISTFILESIZE=-1
export HISTFILE=~/.bash_eternal_history
# Save and reload the history after each command finishes
# export PROMPT_COMMAND="history -a; history -c; history -r; $PROMPT_COMMAND"
alias memory-details="sudo dmidecode -t memory"

parse_git_branch() {
         git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
 }
# if [ "$color_prompt" = yes ]; then
#  PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[01;31m\] $(parse_git_branch)\[\033[00m\]\$ '
# else
 #PS1='${debian_chroot:+($debian_chroot)}\u@\h:\w$(parse_git_branch)\$ '
#  PS1='${debian_chroot:+($debian_chroot)}\u:$(parse_git_branch)\$ '
# fi
PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u:\[\033[01;37m\]\W\[\033[00m\] $(parse_git_branch)\[\033[00m\]\$ '
