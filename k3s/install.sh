

sudo mkdir -p /etc/rancher/k3s/
sudo cp master/config.yaml  /etc/rancher/k3s/

curl -sfL https://get.k3s.io | sh -

# k3s server --config /etc/rancher/k3s/config.yaml
# k3s kubectl get nodes
# k3s kubectl get pods --all-namespaces


kubectl create namespace ingress-nginx
