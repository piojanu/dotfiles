alias gscp='gcloud storage cp'

alias ga='git add'
alias gco='git co'
alias gci='git ci -m'
alias gcia='git ci -a -m'
alias gs='git st'
alias gb='git br'
alias gh='git hist'
alias gha='git hist-all'
alias gho='git hist-origin'

alias ll='ls -lGFha --color=auto'
alias ls='ls -GFh --color=auto'
alias ds='du -h -d 1'

alias rm="echo Use the full path i.e. '/bin/rm'"

function md {
    mkdir -p $1 && cd $1
}
