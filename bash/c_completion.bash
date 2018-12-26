#!/usr/bin/env bash

_c()
{
    local cur opts
    COMPREPLY=()
    cur="${COMP_WORDS[COMP_CWORD]}"
    opts="$(ls ~/Code)"

    COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
}
complete -F _c c
