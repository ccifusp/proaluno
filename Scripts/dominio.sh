#!/bin/bash

if [ $USER != "root" ]; then
    echo "Você precisa ser root!"
    exit
fi

echo "O IP desta máquina é: "
ifconfig wlp1s0 | grep "inet "
echo "E o hostname é: "
hostname
echo "Isto está certo? [s/n] "
read RESPOSTA

if [ $RESPOSTA == "n" ]; then
    exit
fi

realm discover proaluno.dyn.if.usp.br

kinit Administrator

net ads join -U Administrator@PROALUNO.DYN.IF.USP.BR

echo "session optional    pam_mkhomedir.so" >> /etc/pam.d/common-session

echo "Feito!"
