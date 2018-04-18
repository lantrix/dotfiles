# Powerline
## Mac install
if [[ -f $HOME/Library/Python/2.7/lib/python/site-packages/powerline/bindings/bash/powerline.sh ]];
then
  export PATH="$PATH:$HOME/Library/Python/2.7/bin"
  export POWERLINE_COMMAND=powerline
  export POWERLINE_CONFIG_COMMAND=powerline-config
  powerline-daemon -q
  POWERLINE_BASH_CONTINUATION=1
  POWERLINE_BASH_SELECT=1
  . $HOME/Library/Python/2.7/lib/python/site-packages/powerline/bindings/bash/powerline.sh
fi

## Linux install
if [[ -f $HOME/.local/bin/powerline ]];
then
  if [ -f ~/.local/lib/python2.7/site-packages/powerline/bindings/bash/powerline.sh ]; then
    export PATH="$HOME/.local/bin:$PATH"
    export POWERLINE_COMMAND=powerline
    export POWERLINE_CONFIG_COMMAND=powerline-config
    powerline-daemon -q
    POWERLINE_BASH_CONTINUATION=1
    POWERLINE_BASH_SELECT=1
    source ~/.local/lib/python2.7/site-packages/powerline/bindings/bash/powerline.sh
  fi
fi
