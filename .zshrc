# settings
zstyle ':znap:*' repos-dir "$HOME/.zsh-plugins"
REPORTTIME=3
HISTFILE=~/.zhistory
HISTSIZE=5000
SAVEHIST=5000
setopt INC_APPEND_HISTORY
setopt EXTENDED_HISTORY
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_IGNORE_SPACE
setopt CORRECT_ALL

source $HOME/.zsnap/znap.zsh
znap prompt sindresorhus/pure

znap source marlonrichert/zsh-autocomplete
znap source zsh-users/zsh-autosuggestions
znap source zsh-users/zsh-syntax-highlighting
znap source ptavares/zsh-direnv
znap source aubreypwd/zsh-plugin-fd
znap source le0me55i/zsh-extract
znap source aubreypwd/zsh-plugin-download

# aliases
## ls
exa_params=('--git' '--icons' '--classify' '--group-directories-first' '--time-style=long-iso' '--group' '--color-scale')
alias ls='exa ${exa_params}'
alias l='exa --git-ignore ${exa_params}'
alias ll='exa --all --header --long ${exa_params}'
alias llm='exa --all --header --long --sort=modified ${exa_params}'
alias la='exa -lbhHigUmuSa'
alias lx='exa -lbhHigUmuSa@'
alias lt='exa --tree'
alias tree='exa --tree'

## git
gc() {
  git commit -m '$1'
}
alias ginit='git init .'
alias gs='git status'
alias gd='git diff'
alias gadd='git add .'

## apps
alias nvim='neovide'
alias vim='neovide'
alias vi='neovide'

## tools
alias top='btop'

## suffix aliases
alias -s txt=nvim
alias -s json=nvim
alias -s js=nvim
alias -s ts=nvim
alias -s css=nvim
alias -s html=nvim
alias -s svelte=nvim
