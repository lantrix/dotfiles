#Mac Completion
if [[ ! ${#BREW_PREFIX} -eq 0 ]]; then
	if [[ -d $BREW_PREFIX/etc/bash_completion.d ]]; then
		#bash-completionv2
		export BASH_COMPLETION_COMPAT_DIR="$BREW_PREFIX/etc/bash_completion.d"
		[[ -r "$BREW_PREFIX/etc/profile.d/bash_completion.sh" ]] && . "$BREW_PREFIX/etc/profile.d/bash_completion.sh"
		source $BREW_PREFIX/etc/bash_completion.d/*
	fi
fi

#Linux Completion
if [[ -f /etc/bash_completion ]]; then
	if [[ -f `which kubectl 2>/dev/null` ]]; then
		# populate kubectl autocompletion
		kubectl completion bash > /etc/bash_completion.d/kubectl
	fi
	bash /etc/bash_completion
fi

#Azure CLI completion
if [[ -f `which azure 2>/dev/null` ]]; then
  azure --completion > ~/azure.completion.sh
  source ~/azure.completion.sh
fi

if [[ -f /usr/local/bin/terraform ]]; then
	complete -C /usr/local/bin/terraform terraform
fi