#!/usr/bin/env sh

doctl auth init -t "${DO_KUBERNETES_TOKEN}"
doctl kubernetes cluster kubeconfig save \
      "${DO_KUBERNETES_CLUSTER_ID}" \
      --expiry-seconds $(("${DO_KUBERNETES_CLUSTER_CREDENTIALS_EXPIRY}"))

for p in $(kubectl get pods -o name -l=app=mnk-rendering)
do
    kubectl exec -it "${p}" -- bash -c "supervisorctl restart renderd apache2"
done
