# GO
if [[ -f /usr/local/go/bin ]]; then
  export PATH=$PATH$:/usr/local/go/bin
fi
export GOPATH=$HOME/go
export PATH=$GOPATH/bin:$PATH
