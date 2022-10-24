# GO
if [[ -d "/opt/homebrew/opt/go@1.19/bin" ]]; then
  export PATH="/opt/homebrew/opt/go@1.19/bin:$PATH"
elif [[ -d /usr/local/go/bin ]]; then
  export PATH=$PATH$:/usr/local/go/bin
fi
export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin
