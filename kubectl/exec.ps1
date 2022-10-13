# A lazy way to shell into running containers without having to constantly look up the pod hash.
$name=$args[0]
$namespace=$args[1]
$pod = kubectl get pods -l io.kompose.service=$name -n $namespace -o jsonpath="{.items[0].metadata.name}"
kubectl exec -ti $pod /bin/bash -n $namespace
