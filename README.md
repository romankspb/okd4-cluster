# okd4-cluster

Ansible playbooks for deploying OKD 4 with static IP on vSphere UPI or bare-metal

Cluster configuration:
- external DNS setting up manually
- 3 masters, 3 infra nodes, N workers
- 2 loadbalancers with failover (haproxy+keepalived)
- setup openshift-ingress placing on infra nodes
- setup openshift-logging placing on infra nodes
- setup openshift-monitoring placing on infra nodes
- setup openshift-image-registry placing on infra nodes
- setup nfs dynamic provisioner (optional)
