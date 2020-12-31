#!/bin/bash
#
# lessPod - Abre o pod com less
#
# Como usar: ". lessPod.sh ambiente nome-do-pod-v1-numero-numero" para abrir o pod com less.
#
# Exemplo: 
# 	felipe_alencar@cloudshell:~$ . lessPod.sh uat3 bscsix-read-simcard-data-v1-6488d5bf74-mf2jh 
#
#
namespace=$1
pod=$2
kubectl -n $1 logs -f $2 | less
