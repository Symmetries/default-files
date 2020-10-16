parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

PS1="\n╭ \w\$(parse_git_branch) ${WINDOW} \n╰ \$ "

github="ce709d660f861b28d37eff206efc7c7288475555"
