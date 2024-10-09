#!/usr/bin/env bash

BASEDIR=$(dirname "$0")

curl https://raw.githubusercontent.com/caian-org/ansible-stow/v0.1.3/stow -o ${BASEDIR}/stow
