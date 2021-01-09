#!/bin/bash
#Histórico de versões:
#
#1.1 - Flavio Moreira
#condição para o ambiente ser variável (caso não informe o ambiente será considerado o do namespace.txt)
#
#1.0 - Heitor Bellini
#
#tailPod possibilita acompanhar o log do pod informado em tempo real.
#
#Como usar:
#. tailPod.sh u-billing-profile-info-v1-6cf54c8584-kzrmg
#. tailPod.sh u-billing-profile-info-v1-6cf54c8584-kzrmg uat3
#
if [ $2 null ]
then
    read -r np<namespace.txt
    kubectl -n $np logs -f $1
else
    kubectl -n $2 logs -f $1
fi 2>&-