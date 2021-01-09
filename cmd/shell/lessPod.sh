#!/bin/bash
#Histórico de versões:
#
#1.1 - Flavio Moreira
#condição para o ambiente ser variável (caso não informe o ambiente será considerado o do namespace.txt)
#
#1.0 - Heitor Bellini
#lessPod abre o log atual do pod informado em formato 'less'.
#
#Como usar:
# . lessPod.sh imdb-read-status-by-msisdn-v1-7f4db868c5-pbhmr
# . lessPod.sh imdb-read-status-by-msisdn-v1-7f4db868c5-pbhmr uat3
#
if [ $2 null ]
then
    read -r np<namespace.txt
    kubectl -n $np logs -f $1 | less
else
    kubectl -n $2 logs -f $1 | less
fi 2>&-