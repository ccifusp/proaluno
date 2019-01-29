Preparar: alterar as variaveis nos arquivos:

- hosts: <<hostname.dyn.if.usp.br>>, <<IP>>;
- playbook.yml: <<hostname.dyn.if.usp.br>>, <<dcdomain.dyn.if.usp.br>>, <<password>> e a interface (interfaces).

Instalar pacotes python-minimal e python-simplejson no servidor samba DC (dcdomain.dyn.if.usp.br).

Adicionar o repositorio universe no servidor samba DC (dcdomain.dyn.if.usp.br) (por causa do pacote docbook-xml):
```script
sudo add-apt-repository universe
sudo apt-get update
```

Rodar o playbook:
```script
ansible-playbook playbook.yml
```
