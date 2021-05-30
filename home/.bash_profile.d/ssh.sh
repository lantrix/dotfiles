# SSH Agent
# if [[ $(grep ENCRYPTED $HOME/.ssh/id_rsa) == *ENCRYPTED* ]]; then
if [[ -f $HOME/.ssh/id_rsa ]]; then
	eval $(ssh-agent)
	ssh-add $HOME/.ssh/id_rsa
fi
