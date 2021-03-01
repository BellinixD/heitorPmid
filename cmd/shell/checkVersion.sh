#!/bin/bash
#
# checkVersion.sh - Checa a versão do serviço no ambiente.
#
# Como usar: ". checkVersion.sh nome-do-pod-v1 ambiente" para checar a versão no ambiente.
#
# Exemplo: 
# 	felipe_alencar@cloudshell:~$ . checkVersion.sh bscsix-read-simcard-data-v1 uat2
#
# Obs: Deve-se considerar apenas os 3 primeiros digitos, pois o ultimo digito é usado pela fabrica.
#
namespace=$2
pod=$1
kubectl -n $2 describe deploy $1 | grep Image
