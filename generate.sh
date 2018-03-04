#!/usr/bin/env bash
if [ -z $1 ]; then
  echo "Please specify a name for this set of keystores!"
  exit 1
fi

ansible-galaxy install -r requirements.yml
dir=$(pwd)
ansible-playbook run.yml -i inventory --extra-vars "KEYSTORE_BASE_DIR=${dir}/$1"
