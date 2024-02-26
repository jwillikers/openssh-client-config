default: install

alias f := format
alias fmt := format

format:
    just --fmt --unstable

install:
    mkdir --parents ~/.config/ssh/config.d ~/.ssh
    ln --force --relative --symbolic ssh/config ~/.ssh/config
    ln --force --relative --symbolic ssh/config.d/*.conf ~/.config/ssh/config.d
