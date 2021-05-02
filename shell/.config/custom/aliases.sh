alias path='echo -e ${PATH//:/\\n}'

alias lsgrep='ls -al --group-directories-first | grep -i'
alias psgrep='ps -aef | grep -i'

alias myip='dig +short myip.opendns.com @resolver1.opendns.com'
alias dot='/usr/bin/git --git-dir=$HOME/.dot/.git --work-tree=$HOME/.dot'
