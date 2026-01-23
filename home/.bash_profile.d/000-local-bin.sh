if [[ -d $HOME/.local/bin ]]; then
  export PATH="$HOME/.local/bin:$PATH"
fi

# Colima (Docker)
if command -v colima >/dev/null 2>&1; then
  export DOCKER_HOST=unix:///Users/$USER/.colima/docker.sock
elif [[ -d $HOME/.docker/bin ]]; then
  export PATH="$HOME/.docker/bin:$PATH"
fi

