## Deploy K3S

1. set firewall https://docs.k3s.io/installation/requirements?os=debian
2. Secrets Encryption Config https://docs.k3s.io/security/secrets-encryption
3. CIS Hardening https://docs.k3s.io/security/hardening-guide
4. Configure Storage with LongHorn or ceph for Distribute storage
    https://ceph.io/en/ 
    https://longhorn.io/
5. add san for the kubectl master (or LB) for the kubectl connect as remotly

## Deploy HA k3s with External DataStore
    
1. https://www.suse.com/c/rancher_blog/deploying_ha_k3s_external_database/    
![Architecture](https://docs.k3s.io/img/k3s-architecture-ha-external.svg)

## Create New Role for Users

## Deploy NGINX Ingress Controller 
    1. kubectl create ns nginx-ingress
    2. kubectl apply -f nginx-controller/deployment-nginx.yml

## Deploy Postgres on K3s
    1. Operator https://github.com/zalando/postgres-operator/tree/master
    2. Deployment https://www.digitalocean.com/community/tutorials/how-to-deploy-postgres-to-kubernetes-cluster

## CI for apps
    1. repo for api - https://github.com/IsraelDavidDahan85/node-api
    2. Repo for React app - https://github.com/IsraelDavidDahan85/react-sample
    3. Repo for Deployments - https://github.com/IsraelDavidDahan85/deployments-node-app

## CD for apps

ArgoApp or deploy the charts.