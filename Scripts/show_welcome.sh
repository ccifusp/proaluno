#!/bin/bash

# Texto a ser mostrado
FILE=/opt/Welcome/welcome.txt

# Se for root ou ccifusp, sai e não faz nada
if [ "$(whoami)" == "root" ]; then
    exit 0
elif [ "$(whoami)" == "ccifusp" ]; then
    exit 0
fi

# Se o arquivo a ser mostrado existe, mostra e pergunta se aceita ou não.
# Guarda a resposta em FLAG.
if [ -f $FILE ] ; then
    gxmessage -buttons "Eu aceito:0,Não aceito:101"  -center -font "serif 11" -name "Código de Ética" -borderless -ontop -wrap -noescape -file $FILE
    FLAG=$?
else
    echo "Erro: Arquivo welcome.txt não foi encontrado em /opt/Welcome!"
    exit 102
fi

# Se FLAG for qualquer coisa que não 0, mata todos os processos do usuário e faz logoff.
if [ $FLAG -ne "0" ]; then
    pkill -KILL -u $USER
fi
