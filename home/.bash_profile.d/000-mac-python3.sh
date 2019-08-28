if [[ `uname` -eq 'Darwin' ]]; then
	eval "$(pyenv init -)"
	eval "$(pyenv virtualenv-init -)"
	#pyenv compile needs zlib - zlib is keg-only
	export LDFLAGS="-L/usr/local/opt/zlib/lib"
	export CPPFLAGS="-I/usr/local/opt/zlib/include"
fi
