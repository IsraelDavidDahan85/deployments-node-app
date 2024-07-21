#!/bin/bash

#https://grafana.com/docs/loki/latest/setup/install/helm/install-monolithic/

helm install -n o11y --values values.yaml --set loki.useTestSchema=true loki grafana/loki 
