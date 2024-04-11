# should be sourced in the ~/.zshrc file

alias git-reset-yarn="git reset yarn.lock && git checkout -- yarn.lock && yarn && git add yarn.lock"
alias gf="git commit --fixup"
alias rename="perl-rename"
alias ll="eza --long --header --icons --git --group-directories-first"
alias merge-geojsons='jq -s "map(.features) | flatten(1) | {type: \"FeatureCollection\", features: .}"'
unalias gpf
function gpf {
  git push origin $(git branch --show-current) --force-with-lease
}

function gum {
  git fetch origin master:master
}

alias grim='git rebase -i master'
alias gap='git add -p'
alias skf=$KUSO_FRONTEND/skf

