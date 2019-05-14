#!/bin/bash

# Parte 1
# Executar como superusuário

apt-get update
apt-get full-upgrade -y
apt-get autoremove -y
apt-get autoclean

apt-get install python-minimal python-simplejson adcli realmd krb5-user samba-common-bin samba-libs samba-dsdb-modules sssd sssd-tools libnss-sss packagekit policykit-1 winbind -y

apt-get purge avahi-daemon resolvconf -y

cp interfaces /etc/network/interfaces
cp krb5.conf /etc/krb5.conf
cp realmd.conf /etc/realmd.conf
cp smb.conf /etc/samba/smb.conf
cp common-session /etc/pam.d/common-session
cp timesyncd.conf /etc/systemd/timesyncd.conf
cp sssd.conf /etc/sssd/sssd.conf
cp resolv.conf /etc/resolv.conf

chattr +i /etc/resolv.conf

shutdown -r now
