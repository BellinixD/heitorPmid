#!/bin/bash
read -r np<namespace.txt
kubectl -n $np logs -f $1 | less
