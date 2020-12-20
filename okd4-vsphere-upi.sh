#!/bin/bash

echo -n "Enter vault password: "
read -s password
echo $password > vault.pwd

cp ./inventories/vsphere-upi-vault.yaml ./playbooks/vault.yaml
ansible-playbook -i ./inventories/vsphere-upi-inventory.yaml ./playbooks/vmware_cluster_setup.yaml --vault-password-file=./vault.pwd

rm -f ./vault.pwd ./playbooks/vault.yaml
