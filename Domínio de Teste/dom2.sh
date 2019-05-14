#!/bin/bash

# Parte 2
# Executar como superusuário

realm discover smbdomain.if.usp.br

kinit Administrator

net ads join -U Administrator@SMBDOMAIN.IF.USP.BR
