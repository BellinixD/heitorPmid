#!/bin/bash
#Histórico de versões:
#
#1.0 - Felipe de Carvalho Alencar
#
#editPod possibilita editar o deployment de um serviço
#
#Como usar:
#. editDeploy.sh u-billing-profile-info-v1
read -r np<namespace.txt
kubectl -n $np edit deploy $1
