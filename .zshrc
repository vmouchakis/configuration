# git branch info
function parse_git_branch() {
    git branch 2> /dev/null | sed -n -e 's/^\* \(.*\)/(\1)/p'
}

setopt PROMPT_SUBST

# use single quotes '' in order the parse_git_branch function to be called
PS1='%n@%m %1~ $(parse_git_branch) %# '