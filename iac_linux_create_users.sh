#!/bin/bash

echo "Criando usuarios do sistema..."

useradd guest10 -c "Usuario Convidado" -s /bin/bash -m -p $(openssl passwd Senha123)
passwd guest10 -e 

useradd guest11 -c "Usuario Convidado" -s /bin/bash -m -p $(openssl passwd Senha123)
passwd guest11 -e

useradd guest12 -c "Usuario Convidado" -s /bin/bash -m -p $(openssl passwd Senha123)
passwd guest12 -e

useradd guest13 -c "Usuario Convidado" -s /bin/bash -m -p $(openssl passwd Senha123)
passwd guest13 -e

useradd guest14 -c "Usuario Convidado" -s /bin/bash -m -p $(openssl passwd Senha123)
passwd guest14 -e

useradd guest15 -c "Usuario Convidado" -s /bin/bash -m -p $(openssl passwd Senha123)
passwd guest15 -e

echo "Processo criacao usuarios finalizado!"

