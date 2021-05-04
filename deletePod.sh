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

if [ -z $2 ] 
then
	read -r namespace<namespace.txt
else
namespace=$2
fi
pod=$1

kubectl -n $namespace delete pod $pod
