if [[ `uname` -eq 'Darwin' ]]; then
    export EDITOR="mvim -f"
elif [[ `uname` -eq 'Linux' ]]; then
    export EDITOR="vim"
fi


