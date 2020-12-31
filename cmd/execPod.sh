#!/bin/bash
#
# execPod - Entra nos arquivos do pod.
#
# Como usar: ". execPod.sh ambiente nome-do-pod-v1" para entrar nos arquivos do pod.
#
# Exemplo: 
# 	felipe_alencar@cloudshell:~$ . execPod.sh uat3 bscsix-read-bill-sum-v1 
#
#
namespace=$1
pod=$2
kubectl -n $1 exec -it deploy/$2 /bin/bash

