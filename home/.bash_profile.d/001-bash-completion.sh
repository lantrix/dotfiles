#Mac Completion
if type brew &>/dev/null; then
  HOMEBREW_PREFIX="$(brew --prefix)"
  if [[ -r "${HOMEBREW_PREFIX}/etc/profile.d/bash_completion.sh" ]]
  then
    source "${HOMEBREW_PREFIX}/etc/profile.d/bash_completion.sh"
  else
    for COMPLETION in "${HOMEBREW_PREFIX}/etc/bash_completion.d/"*
    do
      [[ -r "${COMPLETION}" ]] && source "${COMPLETION}"
    done
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

	if [[ -f `which poetry 2>/dev/null` ]]; then
		# populate poetry autocompletion
		poetry completions bash >> ~/.bash_completion
	fi

if [[ -d $HOME/.twilio-cli ]]; then
	TWILIO_AC_BASH_SETUP_PATH=$HOME/.twilio-cli/autocomplete/bash_setup && test -f $TWILIO_AC_BASH_SETUP_PATH && source $TWILIO_AC_BASH_SETUP_PATH; # twilio autocomplete setup
fi