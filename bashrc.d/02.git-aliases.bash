# aliases

# git
alias gp='git push'
__git_complete gp _git_push
alias gl='git pull'
__git_complete gl _git_pull
alias gpo='git push origin'
alias gpom='git push origin master'
alias glo='git pull origin'
alias glom='git pull origin master'
alias gfo='git fetch origin'
alias gfom='git fetch origin master'
alias gs='git status -sb'
alias ga='git add -A'
alias gf='git fetch'
__git_complete gf _git_fetch
alias grm='git rm'
alias gc='git commit -m'
alias gac='git add -A && git commit -m'
alias gb='git branch'
__git_complete gb _git_branch
__git_complete gunpb _git_branch
alias gbv='git branch -va'
alias gbD='git branch -D'
__git_complete gbD _git_branch
alias gd='git diff'
alias gdt='git difftool -y'
alias gch='git checkout'
__git_complete gch _git_branch
alias gm='git merge'
__git_complete gm _git_merge
alias gmom='git merge origin/master'
alias gmt='git mergetool'
alias grp='git remote prune'
alias gr='git remote'
__git_complete gr _git_remote

# git merge branch - for local merging of feature branches into master, creates a merge commit even for a fast forward
alias gmb='git merge --no-ff'

# formatted git log
alias gl="git log --pretty=format:'%C(yellow bold)%h%Creset -%C(yellow bold)%d%Creset %s %C(white)%cr by %an%Creset' --abbrev-commit --date=relative"

# formatted git log branch pipe graphs
alias glg="git log --graph --pretty=format:'%C(yellow bold)%h%Creset -%C(yellow bold)%d%Creset %s %C(white)%cr by %an%Creset' --abbrev-commit --date=relative"