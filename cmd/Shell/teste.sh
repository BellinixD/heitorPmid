#!/bin/bash
#
# checkVersion.sh - Checa a versão do serviço no ambiente.
#
# Como usar: ". checkVersion.sh ambiente nome-do-pod-v1" para checar a versão no ambiente.
#
# Exemplo: 
# 	felipe_alencar@cloudshell:~$ . checkVersion.sh uat3 bscsix-read-simcard-data-v1
#
# Obs: Deve-se considerar apenas os 3 primeiros digitos, pois o ultimo digito é usado pela fabrica.
#
# Histórico de Versão:
#       Versão: 1.0
#             Autor: Heitor Bellini <heitor.bellini@engdb.com.br>
#             Data: 08/12/2020
#             Descrição: Primeira versão.
#
sed -i "1 s/^.*$/$1/" namespace.txt
