function jd() {
    cd "$@"
}

function _jd() {
  compadd -U "$@" `jd.py ${JD_DEPTH:=5} $words[CURRENT]`
  return 0
}

compdef _jd jd
