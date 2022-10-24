# SSH Agent
case $(uname) in
  Linux)
    export SSH_AUTH_SOCK=$HOME/.1password/agent.sock
    ;;
  Darwin)
    if [[ ! -d "$HOME/.1password"  ]]; then
	    mkdir -p $HOME/.1password
    fi
    if [[ ! -e "$HOME/.1password/agent.sock"  ]]; then
        ln -s $HOME/Library/Group\ Containers/2BUA8C4S2C.com.1password/t/agent.sock $HOME/.1password/agent.sock
    fi
    export SSH_AUTH_SOCK=$HOME/.1password/agent.sock
    ;;
  *)
    eval $(ssh-agent)
    ssh-add $HOME/.ssh/id_rsa
    ;;
esac
