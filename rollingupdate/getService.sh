#!/bin/bash

NodePort=$(kubectl describe service my-web| grep NodePort | grep -v "Type" | cut -d"/" -f1 | rev | cut -f1| rev)
k8sNode=$(kubectl get pods -o wide | grep -v "NAME" -m 1 | rev | cut -d" " -f1 | rev)
NodeIP=$(kubectl describe node $k8sNode | grep "Addresses"| cut -d":" -f2| sed "s/[ \t]//g" |cut -d"," -f1 | cut -d" " -f1)

echo $k8sNode:$NodeIP

while true; do 
  curl $NodeIP:$NodePort
  sleep 0.1
done
