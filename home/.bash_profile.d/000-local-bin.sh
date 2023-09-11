if [[ -d $HOME/.local/bin ]]; then
  export PATH="$HOME/.local/bin:$PATH"
fi

if [[ -d $HOME/.docker/bin ]]; then
  export PATH="$HOME/.docker/bin:$PATH"
fi
