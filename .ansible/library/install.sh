#!/usr/bin/env bash

BASEDIR=$(dirname "$0")

curl https://raw.githubusercontent.com/vicmattos/ansible-stow/personal/stow -o ${BASEDIR}/stow
