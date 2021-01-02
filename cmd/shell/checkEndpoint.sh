#!/bin/bash
#
# checkEndpoint.sh - Checa o host e port do serviço.
#
# Como usar: ". checkEndpoint.sh ambiente nome-do-pod-v1" para checar o host e port no ambiente.
#
# Exemplo:
#       felipe_alencar@cloudshell:~$ . checkEndpoint.sh uat u-billing-profile-info-v1
#
# Obs: Esse script retorna apenas o host e port do serviço. Alguns serviços podem não retornar o host e port.
#
namespace=$1
pod=$2
kubectl -n $1 describe deploy $2 | grep PROVIDER_ADDRESS