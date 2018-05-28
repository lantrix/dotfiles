if [[ `uname` -eq 'Darwin' ]]; then
    export EDITOR="mvim -f"
fi
if [[ `uname` -eq 'Linux' ]]; then
    export EDITOR="vim"
fi


