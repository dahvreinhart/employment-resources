setopt PROMPT_SUBST;

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

alias killnode="killall -9 node; echo Node Processes Killed!"
alias npmall="npm run build && npm run lint:fix && npm run test:ci"

alias awslogin="aws sso login --profile DRAWS && aws codeartifact login --tool npm --namespace sosafe-aws --domain sosafe --repository release --profile DRAWS"

# Custom Command Prompt
parse_git_branch() {
    git branch 2> /dev/null | sed -n -e 's/^\* \(.*\)/\1/p'
}

PROMPT='[%B%F{blue}%n @ %F{yellow}%c %F{green}on ${$(parse_git_branch):-<none>}%f%b] ->  '
