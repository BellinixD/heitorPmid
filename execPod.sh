#!/bin/bash
#Histórico de versões:
#
#1.0 - Heitor Bellini
#
#execPod fornece acesso de root ao pod informado.
#
#Como usar:
#. execPod.sh u-billing-profile-info-v1

if [ -z $2 ] 
then
	read -r namespace<namespace.txt
else
namespace=$2
fi
pod=$1

kubectl -n $namespace exec -it deploy/$pod /bin/bash
