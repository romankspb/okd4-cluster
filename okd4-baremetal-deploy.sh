#!/bin/bash

echo -n "Enter vault password: "
read -s password
echo $password > vault.pwd

cp ./inventories/okd4-baremetal-vault.yaml ./playbooks/vault.yaml
ansible-playbook -i ./inventories/okd4-baremetal-inventory.yaml ./playbooks/baremetal_cluster_setup.yaml --vault-password-file=./vault.pwd

rm -f ./vault.pwd ./playbooks/vault.yaml
