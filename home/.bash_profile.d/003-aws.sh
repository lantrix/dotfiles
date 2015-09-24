# AWSSAMLCLIAuth
if [[ -f /usr/local/bin/awssamlcliauth/auth.sh  ]]; then
	alias awsauth='/usr/local/bin/awssamlcliauth/auth.sh; [ -r ~/.aws/sessiontoken ] && . ~/.aws/sessiontoken'
fi

# AWS CLI completions
if [[ -f /usr/local/bin/aws_completer ]]; then
	complete -C '/usr/local/bin/aws_completer' aws
fi
