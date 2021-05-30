if [[ `uname` -eq 'Darwin' ]]; then
  if [[ -n "$(which pyenv 2>/dev/null)" ]]; then
    export PYENV_ROOT="$HOME/.pyenv"
    export PATH="$PYENV_ROOT/bin:$PATH"
    eval "$(pyenv init --path)"
    # eval "$(pyenv virtualenv-init -)"
    #pyenv compile needs zlib - zlib is keg-only
    export LDFLAGS="-L/usr/local/opt/zlib/lib"
    export CPPFLAGS="-I/usr/local/opt/zlib/include"
  fi
  if [[ -n "$(which pipenv 2>/dev/null)" ]]; then
    export PIPENV_PYTHON="$HOME/.pyenv/shims/python"
    export PIPENV_VENV_IN_PROJECT=1
    eval "$(pipenv --completion)"
  fi
fi
if [[ `uname` -eq 'Linux' ]]; then
  if [[ -d "$HOME/.pyenv" ]]; then
    export PYENV_ROOT="$HOME/.pyenv"
    export PATH="$PYENV_ROOT/bin:$PATH"
    eval "$(pyenv init --path)"
  fi
fi