if [[ `uname` -eq 'Darwin' ]]; then
    export EDITOR="mvim -f"
    export BASH_SILENCE_DEPRECATION_WARNING=1
fi
if [[ `uname` -eq 'Linux' ]]; then
    export EDITOR="vim"
fi


