function jd() {
    cd "$@"
}

function _jd() {
  if [[ ${COMP_WORDS[COMP_CWORD]} != -* ]] ; then
    COMPREPLY=( `jd.py 5 ${COMP_WORDS[COMP_CWORD]}` )
    return 0
  fi
}

complete -F _jd jd
