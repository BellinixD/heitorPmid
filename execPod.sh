#!/bin/bash

read -r np<namespace.txt

kubectl -n $np exec -it deploy/$1 /bin/bash

