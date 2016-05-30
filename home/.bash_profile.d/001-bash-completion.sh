#Mac Completion
if [[ ! ${#BREW_PREFIX} -eq 0 ]]; then
	if [[ -d $BREW_PREFIX/etc/bash_completion.d ]]; then
  		source $BREW_PREFIX/etc/bash_completion.d/*
	fi
fi

#Linux Completion
if [[ -f /etc/bash_completion ]]; then
	bash /etc/bash_completion
fi

#Azure CLI completion
if [[ -f `which azure` ]]; then
  azure --completion > ~/azure.completion.sh
  source ~/azure.completion.sh
fi
