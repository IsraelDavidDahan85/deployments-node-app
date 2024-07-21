#!/bin/bash

#https://grafana.com/docs/loki/latest/setup/install/helm/install-monolithic/

helm install --values values.yaml loki -n o11y grafana/loki
helm upgrade --install --namespace o11y loki grafana/loki -f values.yml --set loki.auth_enabled=false

