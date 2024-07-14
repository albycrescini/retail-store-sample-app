#!/bin/bash

namespace="retail-store-sample-app"

for pod in $(kubectl get pods --namespace $namespace -o name); do
  kubectl logs --namespace $namespace $pod --all-containers=true --tail=-1 -f &
done

wait

