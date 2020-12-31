#!/bin/bash
#
# getPods - Retorna os pods que estão no ar em todos os ambientes.
#
# Como usar: ". getPods.sh nome-do-pod" para retornar os pods. Pode usar também uma parte do nome conforme os exemplos abaixo:
#
# Exemplo: 
# 	felipe_alencar@cloudshell:~$ . getPods.sh bscs bscsix-read-bill-sum-v1 
#	felipe_alencar@cloudshell:~$ . getPods.sh bscs bscsix-read
#
#
pod=$1
kubectl get pods -A | grep $1