function jd() {
    cd "$@"
}

function _jd() {
    if [[ $words[CURRENT] != -* ]] ; then
        compadd -U "$@" `jd.py ${JD_DEPTH:=5} $words[CURRENT]`
        return 0
    fi
}

compdef _jd jd
