#!/usr/bin/env bash

compdef g=git

function g {
    if [[ $# -gt 0 ]]; then
        git "$@"
    else
        git status --short --branch
    fi
}
