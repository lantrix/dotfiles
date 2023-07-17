if [[ -d /opt/homebrew/opt/asdf ]]; then
    . "/opt/homebrew/opt/asdf/libexec/asdf.sh"
    . "/opt/homebrew/opt/asdf/etc/bash_completion.d/asdf.bash"
fi
if [[ -f $HOME/.asdf/asdf.sh ]]; then
    . $HOME/.asdf/asdf.sh
fi
if [[ -f $HOME/.asdf/completions/asdf.bash ]]; then
    . $HOME/.asdf/completions/asdf.bash
fi
