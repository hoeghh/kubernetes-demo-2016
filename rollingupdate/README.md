# Rolling updates with Kubernetes

Start by creating a deployment and service
```
source 1-deployv1.sh
source 2-createService.sh
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

Now, in the first terminal, run rollingupdate2v2.sh to update the images to v2 in a rolling maner
```
source 3-rollingupdate2v2.sh
```

Check the output in the two other terminals

Check the deployment history
```
source 4-deployment-history.sh
```

Now, rollback the deployment to v1 and check the output in the two ither terminal
```
source 5-rollback.sh
```

To see our replicasets, do
```
kubectl get replicasets
```
