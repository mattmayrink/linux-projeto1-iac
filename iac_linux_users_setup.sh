#!/bin/bash

#----------CRIA DIRETÓRIOS----------------------

echo "Criando Diretórios..."

mkdir -v -m 777 /Publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Dretórios criados com Sucesso!!!"

#----------CRIA GRUPOS-------------------------

echo "Criando grupos..."

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Grupos criados com Sucesso!!"

#----------CRIA USUÁRIOS----------------------------------------------------------

echo "Criando usuários e adcionando os mesmos em seus respectivos
grupos..."

useradd carlos -c "Carlos Texeira" -m -s /bin/bash -p $(openssl passwd Senha123) 
useradd maria -c "Maria de Fatima" -m -s /bin/bash -p $(openssl passwd Senha123)
useradd joao -c "joao de Lima" -m -s /bin/bash -p $(openssl passwd Senha123)

useradd debora -c "Debora Costa" -m -s /bin/bash -p $(openssl passwd Senha123)
useradd sebastiana -c "Sebastiana Ferreira" -m -s /bin/bash -p $(openssl passwd Senha123)
useradd roberto -c "Roberto Hugo" -m -s /bin/bash -p $(openssl passwd Senha123) 

useradd josefina -c "Josefina Aparecida" -m -s /bin/bash -p $(openssl passwd Senha123)
useradd amanda -c "Amanda Texeira" -m -s /bin/bash -p $(openssl passwd Senha123) 
useradd rogerio -c "Rogerio Vasconcelos" -m -s /bin/bash -p $(openssl passwd Senha123)


#----------ADICIONA USUÁRIOS NOS GRUPOS----------------------------------------------

echo "Adicionando usuários em seus respectivos grupos..."

usermod -G GRP_ADM carlos
usermod -G GRP_ADM maria
usermod -G GRP_ADM joao

usermod -G GRP_VEN debora
usermod -G GRP_VEN sebastiana
usermod -G GRP_VEN roberto

usermod -G GRP_SEC josefina
usermod -G GRP_SEC amanda
usermod -G GRP_SEC rogerio


#----------CONFIGURA PERMISÃO NOS DIRETÓRIOS---------------------------------------------------------------

echo "Configurando permissões dos grupos e seus respectivos diretórios"

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec

echo "Permisões grupoos e diretórios executados com Sucesso!!"
echo "FIM SCRIPT"

