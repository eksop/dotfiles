export HISTSIZE=100000
export SAVEHIST=100000

setopt HIST_IGNORE_DUPS

# You may need to manually set your language environment
export LANG=en_US.UTF-8
export LC_CTYPE=en_US.UTF-8

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='vim'
fi

# Include local user bin dir
[[ -d "$HOME/.local/bin" ]] && export PATH="$PATH:$HOME/.local/bin"


[[ -d "$HOME/.cargo/bin" ]] && export PATH="$PATH:$HOME/.cargo/bin"
[[ -s "$HOME/.cargo/env" ]] && source "$HOME/.cargo/env"

# macOS
#[[ -s ~/.fzf.zsh ]] && source ~/.fzf.zsh
#[[ -s /opt/local/share/fzf/shell/key-bindings.zsh ]] && source /opt/local/share/fzf/shell/key-bindings.zsh

# linux
#[ -f /usr/share/fzf/key-bindings.zsh ] && source /usr/share/fzf/key-bindings.zsh
#[ -f /usr/share/fzf/completion.zsh ] && source /usr/share/fzf/completion.zsh

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# Ruby
[[ -d "$HOME/.rvm" ]] && export RVM_DIR="$HOME/.rvm"
[[ -s "$RVM_DIR/scripts/rvm" ]] && source "$RVM_DIR/scripts/rvm" # Load RVM into a shell session *as a function*

# Nodejs
[[ -d "$HOME/.nvm" ]] && export NVM_DIR="$HOME/.nvm"
[[ -d "$HOME/.config/nvm" ]] && export NVM_DIR="$HOME/.config/nvm"
[[ -d "/usr/local/lib/node_modules" ]] && export NODE_PATH=/usr/local/lib/node_modules
[ -s "$NVM_DIR/nvm.sh" ] && source "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

## PHP support
[[ -s $HOME/.phpbrew/bashrc ]] && source $HOME/.phpbrew/bashrc

# src hilite
[[ -s /usr/bin/src-hilite-lesspipe.sh ]] && export LESSOPEN="| /usr/bin/src-hilite-lesspipe.sh %s"

export VIRTUAL_ENV_DISABLE_PROMPT=1
export ANSIBLE_NOCOWS=1
export BAT_THEME="TwoDark"

# Dircolors
[[ $commands[dircolors] ]] && \
eval "$(dircolors -p | \
    sed 's/ 4[0-9];/ 01;/; s/;4[0-9];/;01;/g; s/;4[0-9] /;01 /' | \
    dircolors /dev/stdin)"

# Base16 Shell
BASE16_SHELL="$HOME/.config/base16-shell/"
[ -n "$PS1" ] && \
    [ -s "$BASE16_SHELL/profile_helper.sh" ] && \
        source "$BASE16_SHELL/profile_helper.sh"

# macOS
[[ -d /Library/Java/JavaVirtualMachines/openjdk15/Contents/Home ]] && export JAVA_HOME=/Library/Java/JavaVirtualMachines/openjdk15/Contents/Home

[[ $commands[direnv] ]] && eval "$(direnv hook zsh)"

# Make Python use UTF-8 encoding for output to stdin, stdout, and stderr.
export PYTHONIOENCODING='UTF-8'

# Don’t clear the screen after quitting a manual page.
export MANPAGER='less -X';

[[ -s "$HOME/.config/broot/launcher/bash/br" ]] && source "$HOME/.config/broot/launcher/bash/br"

[[ $commands[kubectl] ]] && source <(kubectl completion zsh)
[[ $commands[starship] ]] && eval "$(starship init zsh)"
[[ $commands[mcfly] ]] && eval "$(mcfly init zsh)"

[[ -d "${KREW_ROOT:-$HOME/.krew}/bin" ]] && export PATH="${KREW_ROOT:-$HOME/.krew}/bin:$PATH"

export USE_GKE_GCLOUD_AUTH_PLUGIN=True

[[ -d "$HOME/.pyenv" ]] && export PYENV_ROOT="$HOME/.pyenv"
[[ -d "$HOME/.pyenv/bin" ]] && export PATH="$PYENV_ROOT/bin:$PATH"
[[ $commands[pyenv] ]] && eval "$(pyenv init -)"

