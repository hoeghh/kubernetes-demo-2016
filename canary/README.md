# Canary deployment with Kubernetes

Start by creating a deployment and service
```
source 1-deployv1.sh
source 2-createService.sh
```

check deployment history via ```source deployment-history.sh```

In another terminal, run watchservices to keep requesting the service
```
source 3-getService.sh
```

In another terminal, run watchservices.sh to see the action
```
4-watchservices.sh
```

Now, create the canary
```
source 5-deployv2-canary.sh
```

Watch the output and see the new text in some of the output


Scale the old replicaset down to zero
```
kubectl scale deployment my-web --replicas=0
```

Scale the new canary up to 10
```
kubectl scale deployment my-web-canary --replicas=10
```
