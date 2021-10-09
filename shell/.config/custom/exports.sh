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

[[ -d "$HOME/.local/bin" ]] && export PATH="$PATH:$HOME/.local/bin"
[[ -d "$HOME/.cargo/bin" ]] && export PATH="$PATH:$HOME/.cargo/bin"

# macOS
[[ -s ~/.fzf.zsh ]] && source ~/.fzf.zsh
[[ -s /opt/local/share/fzf/shell/key-bindings.zsh ]] && source /opt/local/share/fzf/shell/key-bindings.zsh

# linux
[ -f /usr/share/fzf/key-bindings.zsh ] && source /usr/share/fzf/key-bindings.zsh
[ -f /usr/share/fzf/completion.zsh ] && source /usr/share/fzf/completion.zsh

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# Ruby
[[ -d "$HOME/.rvm" ]] && export RVM_DIR="$HOME/.rvm"
[[ -s "$RVM_DIR/scripts/rvm" ]] && source "$RVM_DIR/scripts/rvm" # Load RVM into a shell session *as a function*

# Nodejs
[[ -d "$HOME/.nvm" ]] && export NVM_DIR="$HOME/.nvm"
[[ -d "/usr/local/lib/node_modules" ]] && export NODE_PATH=/usr/local/lib/node_modules
[ -s "$NVM_DIR/nvm.sh" ] && source "$NVM_DIR/nvm.sh"  # This loads nvm

## PHP support
[[ -s $HOME/.phpbrew/bashrc ]] && source $HOME/.phpbrew/bashrc

# src hilite
[[ -s /usr/bin/src-hilite-lesspipe.sh ]] && export LESSOPEN="| /usr/bin/src-hilite-lesspipe.sh %s"

export VIRTUAL_ENV_DISABLE_PROMPT=1
export ANSIBLE_NOCOWS=1
export BAT_THEME="TwoDark"

command -v dircolors >/dev/null 2>&1 && \
eval "$(dircolors -p | \
    sed 's/ 4[0-9];/ 01;/; s/;4[0-9];/;01;/g; s/;4[0-9] /;01 /' | \
    dircolors /dev/stdin)"

BASE16_SHELL="$HOME/.config/base16-shell/"
[ -s "$BASE16_SHELL/profile_helper.sh" ] && \
    eval "$("$BASE16_SHELL/profile_helper.sh")"

# macOS
[[ -d /Library/Java/JavaVirtualMachines/openjdk15/Contents/Home ]] && export JAVA_HOME=/Library/Java/JavaVirtualMachines/openjdk15/Contents/Home

command -v direnv >/dev/null 2>&1 && eval "$(direnv hook zsh)"

# linux
export XDG_CURRENT_DESKTOP=sway

# Make Python use UTF-8 encoding for output to stdin, stdout, and stderr.
export PYTHONIOENCODING='UTF-8'

# Don’t clear the screen after quitting a manual page.
export MANPAGER='less -X';

[[ $commands[kubectl] ]] && source <(kubectl completion zsh)

export MOZ_ENABLE_WAYLAND=1
export GDK_BACKEND=wayland
export XDG_CURRENT_DESKTOP=sway
export XDG_SESSION_TYPE=wayland
export WLR_NO_HARDWARE_CURSORS=1

eval "$(starship init zsh)"
eval "$(mcfly init zsh)"

