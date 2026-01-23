if [[ `uname` -eq 'Darwin' ]]; then
  if [[ -n "$(which pyenv 2>/dev/null)" ]]; then
    export PYENV_ROOT="$HOME/.pyenv"
    [[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
    eval "$(pyenv init - bash)"
    #pyenv compile needs zlib - zlib is keg-only
    export LDFLAGS="-L/usr/local/opt/zlib/lib"
    export CPPFLAGS="-I/usr/local/opt/zlib/include"
  fi
  if [[ -n "$(which pipenv 2>/dev/null)" ]]; then
    export PIPENV_PYTHON="$HOME/.pyenv/shims/python"
    export PIPENV_VENV_IN_PROJECT=1
    export PIPENV_IGNORE_VIRTUALENVS=1
    export PATH="$HOME/.pipenv-venv/bin:$PATH"
    eval "$(_PIPENV_COMPLETE=bash_source pipenv)"
  fi
fi
if [[ `uname` -eq 'Linux' ]]; then
    export PYENV_ROOT="$HOME/.pyenv"
    [[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
    eval "$(pyenv init - bash)"
    #pyenv compile needs zlib - zlib is keg-only
    export LDFLAGS="-L/usr/local/opt/zlib/lib"
    export CPPFLAGS="-I/usr/local/opt/zlib/include"
  fi
  if [[ -n "$(which pipenv 2>/dev/null)" ]]; then
    export PIPENV_PYTHON="$HOME/.pyenv/shims/python"
    export PIPENV_VENV_IN_PROJECT=1
    export PIPENV_IGNORE_VIRTUALENVS=1
    export PATH="$HOME/.pipenv-venv/bin:$PATH"
    eval "$(_PIPENV_COMPLETE=bash_source pipenv)"
  fi
fi