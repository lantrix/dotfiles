if [[ `uname` -eq 'Darwin' ]]; then
  if [[ -n "$(which pyenv)" ]]; then
    eval "$(pyenv init -)"
    # eval "$(pyenv virtualenv-init -)"
    #pyenv compile needs zlib - zlib is keg-only
    export LDFLAGS="-L/usr/local/opt/zlib/lib"
    export CPPFLAGS="-I/usr/local/opt/zlib/include"
  fi
  if [[ -n "$(which pipenv)" ]]; then
    export PIPENV_PYTHON="$HOME/.pyenv/shims/python"
    export PIPENV_VENV_IN_PROJECT=1
    eval "$(pipenv --completion)"
  fi
fi
if [[ `uname` -eq 'Linux' ]]; then
  if [[ -d "$HOME/.pyenv" ]]; then
    export PATH="$HOME/.pyenv/bin:$PATH"
    if command -v pyenv 1>/dev/null 2>&1; then
      eval "$(pyenv init -)"
    fi
  fi
fi