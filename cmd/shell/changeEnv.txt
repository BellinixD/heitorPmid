#!/bin/bash
#
# changeEnv - Muda o ambiente para fqa, dev ou prd.
#
# Como usar: ". changeEnv.sh ambiente" e aguarde para mudar de ambiente.
#
# Exemplo:
#		felipe_alencar@cloudshell:~$ . changeEnv.sh prd
#
# Histórico de Versão:
#       Versão: 1.0
#             Autor: Felipe de Carvalho Alencar <felipe.alencar@engdb.com.br>
#             Data: 08/12/2020
#             Descrição: Primeira versão.
#
namespace=$1
if [ $namespace == 'dev' ]
then
    gcloud config set project tim-pmid-dev
    sleep 3's'   
    gcloud config set compute/region southamerica-east1
    sleep 3's'   
    gcloud container clusters get-credentials pmid-dev --region=southamerica-east1
    sleep 3's' 
 
elif [ $namespace == 'fqa' ]
then
    gcloud config set project tim-pmid-fqa
    sleep 3's'                                                                                                 
    gcloud config set compute/region southamerica-east1       
    sleep 3's'                                                                                        
    gcloud container clusters get-credentials tim-pmid-uat --region southamerica-east1 --project tim-pmid-fqa
    sleep 3's' 

elif [ $namespace == 'prd' ]
then
    gcloud config set project tim-pmid-prd 
    sleep 3's' 
    gcloud config set compute/region southamerica-east1   
    sleep 3's'                                                                                            
    gcloud container clusters get-credentials pmid-prod --region=southamerica-east1
    sleep 3's' 
else 
    echo "Passe um dos ambientes válidos: fqa, prd ou dev"
fi
echo ""
