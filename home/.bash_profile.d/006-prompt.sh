# Powerline
## Mac install
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

## Linux install
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
