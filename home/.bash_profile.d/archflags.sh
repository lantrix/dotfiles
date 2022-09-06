# universal binaries for homebrew
case $(uname -m) in
    x86_64) export ARCHFLAGS="-arch i386 -arch x86_64" ;;
    arm64)  export ARCHFLAGS="-arch arm64" ;;
esac
