default: install

alias f := format
alias fmt := format

format:
    just --fmt --unstable

install:
    mkdir --parents "{{ config_directory() }}/ssh/config.d" ~/.ssh
    ln --force --relative --symbolic ssh/config ~/.ssh/config
    ln --force --relative --symbolic ssh/config.d/*.conf "{{ config_directory() }}/ssh/config.d"
