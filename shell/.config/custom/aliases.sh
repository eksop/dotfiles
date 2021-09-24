alias path='echo -e ${PATH//:/\\n}'

#alias vim='nvim'
#alias vi="nvim"

alias lsgrep='ls -al --group-directories-first | grep -i'
alias psgrep='ps -aef | grep -i'

alias myip='dig +short myip.opendns.com @resolver1.opendns.com'
alias .dot='/usr/bin/git --git-dir=$HOME/.dot/.git --work-tree=$HOME/.dot'
type -p bat > /dev/null && alias cat='bat'

[[ "$OSTYPE" != "darwin"* ]] && alias docker="sudo docker"
[[ "$OSTYPE" != "darwin"* ]] && alias docker-compose="sudo docker-compose"

type -p exa > /dev/null && alias ls="exa -F" || alias ls='ls -F --color=auto'
type -p exa > /dev/null && alias ll="exa -F -lgh --git" || alias l="ls -lh"
type -p exa > /dev/null && alias la="exa -F -lgha --git" || alias l="ls -lah"
type -p exa > /dev/null && alias l="exa -F" || alias l="ls -lah"

type -p exa > /dev/null && alias tree="exa -FT" || alias tree='tree -F -C'

alias jq="jq -C"

# Use the config files I want
alias mbsync="mbsync -c \"$XDG_CONFIG_HOME/isync/mbsyncrc\""
alias imapfilter="imapfilter -c \"$XDG_CONFIG_HOME/imapfilter/config.lua\""

#alias wsudo='bash ~/.local/bin/wsudo'
