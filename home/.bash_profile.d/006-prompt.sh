# Powerline
## Mac install
# pip install --user powerline-status pyuv
if [[ `uname` -eq 'Darwin' ]]; then
  userSite=$(python -m site --user-site)
  userBase=$(python -m site --user-base)
  if [[ -f ${userSite}/powerline/bindings/bash/powerline.sh ]];
  then
    export PATH="${userBase}/bin:$PATH"
    export POWERLINE_COMMAND=powerline
    export POWERLINE_CONFIG_COMMAND=powerline-config
    powerline-daemon -q
    POWERLINE_BASH_CONTINUATION=1
    POWERLINE_BASH_SELECT=1
    . ${userSite}/powerline/bindings/bash/powerline.sh
  fi
fi

## Linux install
if [[ `uname` -eq 'Linux' ]]; then
  if [[ -n "$(which python3 2>/dev/null)" ]]; then
    userSite=$(python3 -m site --user-site)
    userBase=$(python3 -m site --user-base)
  else
    userSite=$(python -m site --user-site)
    userBase=$(python -m site --user-base)
  fi
  if [[ -f $HOME/.local/bin/powerline ]];
  then
    if [ -f ${userSite}/powerline/bindings/bash/powerline.sh ]; then
      export PATH="${userBase}/bin:$PATH"
      export POWERLINE_COMMAND=powerline
      export POWERLINE_CONFIG_COMMAND=powerline-config
      powerline-daemon -q
      POWERLINE_BASH_CONTINUATION=1
      POWERLINE_BASH_SELECT=1
      source ${userSite}/powerline/bindings/bash/powerline.sh
    fi
  fi
fi
