if [[ -d ${HOME}/.npm-packages ]]; then
  NPM_PACKAGES="${HOME}/.npm-packages"

  PATH="$NPM_PACKAGES/bin:$PATH"

  # Unset manpath so we can inherit from /etc/manpath via the `manpath` command
  unset MANPATH
  export MANPATH="$NPM_PACKAGES/share/man:$(manpath)"

  # Tell Node about these packages
  NODE_PATH="$NPM_PACKAGES/lib/node_modules:$NODE_PATH"
fi
