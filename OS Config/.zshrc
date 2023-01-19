# Fig pre block. Keep at the top of this file.
[[ -f "$HOME/.fig/shell/zshrc.pre.zsh" ]] && builtin source "$HOME/.fig/shell/zshrc.pre.zsh"

# Load NVM and NVM BASH_COMPLETION
export NVM_DIR="$HOME/.nvm"
  [ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh"  # This loads nvm
  [ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion

# Alia
alias dd="clear"
alias ll="pwd; ls -al"
alias dcls="docker container ls -a"
alias drmf='docker rm -fv $(docker ps -a -q) || true'

alias gs="git status"
alias gd="git diff -U0 --minimal --stat"
alias gb="git branch"
alias gp="git pull"
alias gcd="git checkout development"
alias gcm="git checkout master"
alias grvt1="git reset HEAD~1"
alias gcl="git clean -f -x -e .npmrc"
alias gittrigger="git commit --allow-empty -m 'feat: Triggering build and pipeline'"

alias reload="source ~/.zshrc; echo Terminal Session Reloaded!"
alias showconfig="cat ~/.zshrc"

alias npmall="npm run lint && npm run build-all && npm run swagger"
alias killnode="killall -9 node; echo Node Processes Killed!"
alias yi="arch -x86_64 yarn install"

alias auctionid='f() { node -e "console.log(\"EXTERNAL AUCTION ID \" + process.argv[1] + \" DECODED: \", parseInt(process.argv[1].split(\"\").reverse().join(\"\").toLowerCase(), 16) - 1000)" $1 };f'

# Custom Command Prompt
PROMPT="[%B%F{blue}%n @ %F{yellow}%c%f%b] ->  "

# Fig post block. Keep at the bottom of this file.
[[ -f "$HOME/.fig/shell/zshrc.post.zsh" ]] && builtin source "$HOME/.fig/shell/zshrc.post.zsh"