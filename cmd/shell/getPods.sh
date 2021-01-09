#!/bin/bash
#Histórico de versões:
#
#1.1 - Flavio Moreira
#condição para o ambiente ser variável (caso não informe o ambiente será considerado o do <namespace.txt )
#
#1.0 - Heitor Bellini
#getPods recupera todos os pods que contém em seu nome o parâmetro informado na atual namespace.
#
#Como usar:
#. getPods.sh u-billing-profile-info
#. getPods.sh u-billing-profile-info uat2
#
if [ $2 null ]
then
    read -r np<namespace.txt
    kubectl get pods -A | grep $1 | grep $np
else
    kubectl get pods -A | grep $2 | grep $1
fi 2>&-