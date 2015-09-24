# RVM
if [[ -s "$HOME/.rvm/scripts/rvm" ]]  ; then
	source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
	export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
fi
