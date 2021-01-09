#!/bin/bash
#Histórico de versões:
#
#1.1 - Flavio Moreira
#condição para o ambiente ser variável (caso não informe o ambiente será considerado o do namespace.txt)
#
#1.0 - Heitor Bellini
#
#deletePod deleta o pod informado.
#
#Como usar:
#. deletePod.sh u-billing-profile-info-v1-6cf54c8584-kzrmg
#. deletePod.sh u-billing-profile-info-v1-6cf54c8584-kzrmg uat2

if [ $2 null ]
then
    read -r np<namespace.txt
    kubectl -n $np delete pod $1
else
    kubectl -n $2 delete pod $1
fi 2>&-