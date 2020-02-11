#
# Fancy two-line prompt with git integration
#
# ┌───=[ specious :: sharp -( 0 )-[ ~ ]-( master )
# └──(
#

parse_git_dirty () {
  [[ $(git status 2> /dev/null | tail -1) != "nothing to commit, working tree clean" ]] && echo "*"
}

parse_git_branch () {
  git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e "s/* \(.*\)/\1$(parse_git_dirty)/"
}

show_git_prompt () {
  git branch 2>/dev/null 1>&2 && echo -e "-( \e[34;1m$(parse_git_branch)\e[31;1m )"
}

if [[ -n $(type -t git) ]] ; then
  PS1="\$(show_git_prompt)"
else
  PS1=
fi

PS1="
\[\e[31;1m\]┌───=[ \[\e[39;1m\]\u\[\e[31;1m\] :: \[\e[33;1m\]\h\[\e[31;1m\] ]-( \[\e[39;1m\]\j\[\e[31;1m\] )-[ \[\e[39;1m\]\w\[\e[31;1m\] ]$PS1
\[\e[31;1m\]└──( \[\e[0m\]"

# Display running command in GNU Screen window status
#
# In .screenrc, set: shelltitle "( |~"
#
# See: http://aperiodic.net/screen/title_examples#setting_the_title_to_the_name_of_the_running_program
case $TERM in screen*)
  PS1=${PS1}'\[\033k\033\\\]'
esac
