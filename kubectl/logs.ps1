# A lazy way to to dump log files from running containers without having to constantly look up the pod hash and save a couple keystrokes

$name=$args[0]
$namespace=$args[1]
$pod = kubectl get pods -l io.kompose.service=$name -n $namespace -o jsonpath="{.items[0].metadata.name}"
kubectl logs $pod -n $namespace
