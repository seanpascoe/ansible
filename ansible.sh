#! /bin/bash

ansible-galaxy install -r requirements.yml
ansible-playbook -K local.yml 