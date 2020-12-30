#!/bin/bash
read -r np<namespace.txt
pod=$2
kubectl -n $np get pods | grep $1
