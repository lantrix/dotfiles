if [[ `uname` -eq 'Darwin' ]]; then
	export PATH="/usr/local/opt/python/libexec/bin:$PATH"
	export PATH=$PATH:/usr/local/sbin
	if [[ -d $HOME/Library/Python/3.6/bin  ]]; then
		export PATH="$HOME/Library/Python/3.6/bin:$PATH"
	fi
fi
