# if [[ -d ${HOME}/.npm-packages ]]; then
#   NPM_PACKAGES="${HOME}/.npm-packages"

#   PATH="$NPM_PACKAGES/bin:$PATH"

#   # Unset manpath so we can inherit from /etc/manpath via the `manpath` command
#   unset MANPATH
#   export MANPATH="$NPM_PACKAGES/share/man:$(manpath)"

#   # Tell Node about these packages
#   NODE_PATH="$NPM_PACKAGES/lib/node_modules:$NODE_PATH"
# fi

if [[ -d ${HOME}/Library/pnpm ]]; then
    export PNPM_HOME="${HOME}/Library/pnpm"
    case ":$PATH:" in
    *":$PNPM_HOME:"*) ;;
    *) export PATH="$PNPM_HOME:$PATH" ;;
    esac
fi

if [[ -d ${HOME}/.yarn ]]; then
    export YARN_GLOBAL_BIN="${HOME}/.yarn/bin"
    case ":$PATH:" in
    *":$YARN_GLOBAL_BIN:"*) ;;
    *) export PATH="$YARN_GLOBAL_BIN:$PATH" ;;
    esac
fi

alias npm='op run --env-file=$HOME/.config/op-env/npm-env -- npm'
alias yarn='op run --env-file=$HOME/.config/op-env/npm-env -- yarn'
alias pnpm='op run --env-file=$HOME/.config/op-env/npm-env -- pnpm'
