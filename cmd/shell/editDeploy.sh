#!/bin/bash
#Histórico de versões:
#
#1.1 - Flavio Moreira
#condição para o ambiente ser variável (caso não informe o ambiente será considerado o do namespace.txt)
#
#1.0 - Felipe de Carvalho Alencar
#
#editPod possibilita editar o deployment de um serviço
#
#Como usar:
#. editDeploy.sh u-billing-profile-info-v1
#
if [ $2 null ]
then
    read -r np<namespace.txt
    kubectl -n $np edit deploy $1
else
    kubectl -n $2 edit deploy $1
fi 2>&-