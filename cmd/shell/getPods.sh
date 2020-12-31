#!/bin/bash
#Histórico de versões:
#
#1.0 - Heitor Bellini
#
#getPods recupera todos os pods que contém em seu nome o parâmetro informado na atual namespace.
#
#Como usar:
#. getPods.sh u-billing-profile-info
read -r np<namespace.txt
kubectl -n $np get pods | grep $1
