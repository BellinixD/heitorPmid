#!/bin/bash
#Histórico de versões:
#
#1.0 - Heitor Bellini
#
#lessPod abre o log atual do pod informado em formato 'less'.
#
#Como usar:
#. lessPod.sh u-billing-profile-info-v1-6cf54c8584-kzrmg
read -r np<namespace.txt
kubectl -n $np logs -f $1 | less
