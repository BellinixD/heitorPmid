#!/bin/bash
#
# checkVersion.sh - Checa a versão do serviço no ambiente.
#
# Como usar: ". checkVersion.sh ambiente nome-do-pod-v1" para checar a versão no ambiente.
#
# Exemplo: 
# 	felipe_alencar@cloudshell:~$ . checkVersion.sh uat3 bscsix-read-simcard-data-v1
#
# Obs: Deve-se considerar apenas os 3 primeiros digitos, pois o ultimo digito é usado pela fabrica.
#
namespace=$1
pod=$2
kubectl -n $1 describe deploy $2 | grep Image