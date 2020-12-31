#!/bin/bash
#Histórico de versões:
#
#1.0 - Heitor Bellini
#
#execPod fornece acesso de root ao pod informado.
#
#Como usar:
#. execPod.sh u-billing-profile-info-v1-6cf54c8584-kzrmg
read -r np<namespace.txt
kubectl -n $np exec -it deploy/$1 /bin/bash

