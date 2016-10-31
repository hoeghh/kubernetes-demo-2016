# Canary deployment with Kubernetes

Start by creating a deployment and service
```
source deployv1.sh
source createService.sh
```

check deployment history via ```source deployment-history.sh```

In another terminal, run watchservices.sh to see the action
```
watchservices.sh
```

In another terminal, run watchservices to keep requesting the service
```
source getService.sh
```

Now, create the canary
```
source deployv2-canary.sh
```

Watch the output and see the new text in some of the output
