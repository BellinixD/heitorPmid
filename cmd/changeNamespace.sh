#!/bin/bash
#Histórico de versões:
#
#1.0 - Heitor Bellini
#
#changeNamespace altera a namespace atual.
#
#Como usar:
#. changeNamespace.sh uat2
sed -i "1 s/^.*$/$1/" namespace.txt
