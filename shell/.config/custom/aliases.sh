alias path='echo -e ${PATH//:/\\n}'

type -p nvim > /dev/null && alias vim='nvim'
type -p nvim > /dev/null && alias vi="nvim"

type -p broot > /dev/null && alias tree='broot'
type -p fd > /dev/null && alias find='fd'

alias lsgrep='ls -al --group-directories-first | grep -i'
alias psgrep='ps -aef | grep -i'

alias myip='dig +short myip.opendns.com @resolver1.opendns.com'
alias .dot='/usr/bin/git --git-dir=$HOME/.dot/.git --work-tree=$HOME/.dot'

type -p bat > /dev/null && alias cat='bat'

type -p exa > /dev/null && alias ls="exa -F" || alias ls='ls -F --color=auto'
type -p exa > /dev/null && alias ll="exa -F -lgh --git" || alias l="ls -lh"
type -p exa > /dev/null && alias la="exa -F -lgha --git" || alias l="ls -lah"
type -p exa > /dev/null && alias l="exa -F" || alias l="ls -lah"
type -p exa > /dev/null && alias tree="exa -FT" || alias tree='tree -F -C'

alias jq="jq -C"
alias delta="delta --light"

