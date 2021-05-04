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

if [ -z $2 ] 
then
	read -r namespace<namespace.txt
else
namespace=$2
fi
pod=$1

getPods (){
kubectl get pods -A | grep $namespace | grep $pod
}

getPods $pod $namespace

if [ $? -eq 0 ]
then
		echo ""
else
		echo ""
		echo "Utilize o script conforme o exemplo: . getPods.sh u-billing-profile-info uat2"
		echo ""
fi