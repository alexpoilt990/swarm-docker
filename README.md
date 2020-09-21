# swarm-docker com o Vagrant

Este projeto tem como objetivo criar um cluster swarm usando 5 nodes - 3(Managers) | 2(Workers)
 
Obs: Este ambiente leva 15' para subir

Serão criadas 5 máquinas sendo elas:

* server20  - Manager
* server21  - Manager
* server22  - Manager
* server23  - Worker
* server24  - Worker

### Passo a Passo da instalação:

```
git clone https://github.com/alexpoilt990/swarm-docker.git

cd swarm-docker
```
Agora basta executar o comando abaixo e aguardar todo o ambiente ser criado.
```
vagrant up
```
Após o término iremos verificar se nosso ambiente encontra-se criado e pronto para utilização.

Acessem a máquina master para verificarmos se o cluster encontra-se funcionando:

```
vagrant@server20:~$ docker node ls
ID                            HOSTNAME            STATUS              AVAILABILITY        MANAGER STATUS      ENGINE VERSION
jvnpobyctokag9nkjvh8ycdvl *   server20            Ready               Active              Leader              19.03.12
kjh78nclcsoy46btvc600hrw3     server21            Ready               Active              Reachable           19.03.12
rpqh83rvbgyi7cwic31wdk83w     server22            Ready               Active              Reachable           19.03.12
4f35ggsjvbkauveg4uhlz7nxm     server23            Ready               Active                                  19.03.12
l83jm0tqfh2r8ahl09fs3u40a     server24            Ready               Active                                  19.03.12

```
