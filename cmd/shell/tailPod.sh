#!/bin/bash
#Histórico de versões:
#
#1.0 - Heitor Bellini
#
#tailPod possibilita acompanhar o log do pod informado em tempo real.
#
#Como usar:
#. tailPod.sh u-billing-profile-info-v1-6cf54c8584-kzrmg
read -r np<namespace.txt
kubectl -n $np logs -f $1
