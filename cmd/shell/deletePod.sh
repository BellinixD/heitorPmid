#!/bin/bash
#Histórico de versões:
#
#1.0 - Heitor Bellini
#
#deletePod deleta o pod informado.
#
#Como usar:
#. deletePod.sh u-billing-profile-info-v1-6cf54c8584-kzrmg
read -r np<namespace.txt
kubectl -n $np delete pod $1
