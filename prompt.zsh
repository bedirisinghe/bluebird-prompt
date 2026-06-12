function parse_git_branch() {
  git branch 2>/dev/null | sed -n -e 's/^\* \(.*\)/ %F{0}%K{255} on  \1 %f%k/p'
}

setopt PROMPT_SUBST

export PROMPT='%K{33}%F{255} %n %F{33}%K{76}%F{232}%K{76} %~ %F{76}%K{255}$(parse_git_branch)%F{76}%K{0}%F{255}%K{0}%f%k '