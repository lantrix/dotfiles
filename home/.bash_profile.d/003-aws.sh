# AWSSAMLCLIAuth
if [[ -f /usr/local/bin/awssamlcliauth/auth.sh  ]]; then
  function awsauth { /usr/local/bin/awssamlcliauth/auth.sh "$@"; [[ -r "$HOME/.aws/sessiontoken" ]] && . "$HOME/.aws/sessiontoken"; }
fi

# AWS CLI completions
if [[ -f /usr/local/bin/aws_completer ]]; then
	complete -C '/usr/local/bin/aws_completer' aws
fi

#StackStatusFunction
function stackstatus {
	while [[ 1 ]]; do
		response=$(aws cloudformation describe-stacks --stack-name $1)
		response=$(echo "$response" | tr '\n' ' ' | tr -s " " | sed -e 's/^ *//' -e 's/ *$//')
		stackStatus=$(echo $response | sed -e 's/^.*"StackStatus"[ ]*:[ ]*"//' -e 's/".*//')

		echo "Stack status: $stackStatus"

		if [ "$stackStatus" = "CREATE_COMPLETE" ] || [ "$stackStatus" = "UPDATE_COMPLETE" ]; then
			break
		elif [[ $stackStatus != *_IN_PROGRESS ]]; then
			echo "Error deploying stack '$1', status: $stackStatus"
			break
		fi

		sleep 30
	done
}

