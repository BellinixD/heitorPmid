#!/bin/bash
#
# checkEndpoint.sh - Checa o host e port do serviço.
#
# Como usar: ". checkEndpoint.sh ambiente nome-do-pod-v1" para checar o host e port no ambiente.
#
# Exemplo:
#       felipe_alencar@cloudshell:~$ . checkEndpoint.sh u-billing-profile-info-v1 uat3
#
# Obs: Esse script retorna apenas o host e port do serviço. Alguns serviços podem não retornar o host e port.
#
namespace=$2
pod=$1
kubectl -n $2 describe deploy $1 | grep PROVIDER_ADDRESS