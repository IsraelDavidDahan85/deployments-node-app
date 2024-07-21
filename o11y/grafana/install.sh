### key and cert is from the certificate issued by the MDT CA 
#copy the tls.key and tls.crt to the current directory
kubectl create secret tls k3s-tls --key tls.key --cert tls.crt -n o11y


helm repo add grafana https://grafana.github.io/helm-charts
#kubectl create ns o11y
kubectl apply -f config
helm install grafana grafana/grafana -n o11y -f values.yaml
helm upgrade grafana grafana/grafana -n o11y -f values.yaml



kubectl get secret --namespace o11y grafana -o jsonpath="{.data.admin-password}" | base64 --decode ; echo

#
#NAME: grafana
#LAST DEPLOYED: Thu Feb  8 10:13:07 2024
#NAMESPACE: grafana
#STATUS: deployed
#REVISION: 1
#NOTES:
#1. Get your 'admin' user password by running:
#
#   kubectl get secret --namespace grafana grafana -o jsonpath="{.data.admin-password}" | base64 --decode ; echo
#
#
#2. The Grafana server can be accessed via port 80 on the following DNS name from within your cluster:
#
#   grafana.grafana.svc.cluster.local
#
#   Get the Grafana URL to visit by running these commands in the same shell:
#     export POD_NAME=$(kubectl get pods --namespace grafana -l "app.kubernetes.io/name=grafana,app.kubernetes.io/instance=grafana" -o jsonpath="{.items[0].metadata.name}")
#     kubectl --namespace grafana port-forward $POD_NAME 3000
#
#3. Login with the password from step 1 and the username: admin
##################################################################################
#######   WARNING: Persistence is disabled!!! You will lose your data when   #####
#######            the Grafana pod is terminated.                            #####
##################################################################################

