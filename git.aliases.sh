# [Git]
alias g='git'

# [Git] Common
alias ga='git add'
alias gs='git status'
alias gb='git branch'
alias gi='git commit -m'
alias gd='git diff'
alias gob='git checkout -b'
alias go='git checkout'
alias gcp='git cherry-pick'
alias gcpa='git cherry-pick --abort'
alias gcpc='git cherry-pick --continue'
alias gp='git push origin $(git_current_branch)'
alias gup='git pull'
alias gupr='git pull --rebase'
alias gl='git log'
alias gun='git reset HEAD --'
alias gbsup='git branch --set-upstream-to=origin/$(git_current_branch)'

# [Git] Merge
alias gm='git merge'
alias gma='git merge --abort'
alias gmm='git merge origin/master'

# [Git] Rebase
alias grb='git rebase'
alias grba='git rebase --abort'
alias grbc='git rebase --continue'

# [Git] Stash
alias gst='git stash'
alias gstp='git stash pop'
