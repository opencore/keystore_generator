#!/usr/bin/env bash
if [ -z $1 ]; then
  echo "Please specify an inventory file to generate this set of keystores from!"
  exit 1
fi

ansible-galaxy install -r requirements.yml
dir=$(pwd)
ansible-playbook run.yml -i $1 --extra-vars "KEYSTORE_BASE_DIR=${dir}/$1.keystores"