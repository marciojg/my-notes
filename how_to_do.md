# **How To-do:**

### Atualizar versão rvm
```
instalar = rvm install 2.6.4
troca para a nova versão = rvm 2.6.3
criar gemset que quer = rvm gemset create teddy
lista as versoes que tem = rvm list
lista os gemset existentes = rvm gemset list
```
### -----------------------------------------------------------------------------------------------------
### Subir agente bamboo
```
cd /home/rubyuser/bamboo-agent-home/bin/
./bamboo-agent.sh stop|start|restart
```
### -----------------------------------------------------------------------------------------------------
### Fazer dump da tabela customizedfields
```
rm -f data.sql
sudo docker container exec -u postgres $(sudo docker-compose ps -q database) pg_dump --table=customized_fields --data-only --column-inserts quality_development > data.sql
```
### -----------------------------------------------------------------------------------------------------
### Alterar credentials de produção de forma segura no ambiente de development
```
docker-compose exec application /bin/bash -c "rm -f config/credentials.yml.enc && cp config/credentials.yml.enc.production config/credentials.yml.enc"

docker-compose exec application /bin/bash -c "RAILS_MASTER_KEY=$RAILS_MASTER_KEY bundle exec rails credentials:edit"

docker-compose exec application /bin/bash -c "rm -f config/credentials.yml.enc.production && cp config/credentials.yml.enc config/credentials.yml.enc.production"
```
### -----------------------------------------------------------------------------------------------------
### Subir Aplicação rails
#### PASSENGER
```
# com passenger
RAILS_ENV=ambiente NODE_ENV=ambiente PASSENGER_COMPILE_NATIVE_SUPPORT_BINARY=0 PASSENGER_DOWNLOAD_NATIVE_SUPPORT_BINARY=0 PASSENGER_DISABLE_SECURITY_UPDATE_CHECK=true passenger start -b 0.0.0.0 -p porta -d

# com rails server
RAILS_ENV=ambiente NODE_ENV=ambiente PASSENGER_COMPILE_NATIVE_SUPPORT_BINARY=0 PASSENGER_DOWNLOAD_NATIVE_SUPPORT_BINARY=0 PASSENGER_DISABLE_SECURITY_UPDATE_CHECK=true rails server -b 0.0.0.0 -p porta -d
```
#### PUMA
```
RAILS_ENV=ambiente NODE_ENV=ambiente rails server -b 0.0.0.0 -p porta -d
```
### -----------------------------------------------------------------------------------------------------
### Expor variável de ambiente permanentemente por usuário
Persisting Environment Variables for a User
When an environment variable is set from the shell using the export command, its existence ends when the user’s sessions ends. This is problematic when we need the variable to persist across sessions.

To make an environment persistent for a user’s environment, we export the variable from the user’s profile script.

Open the current user’s profile into a text editor
```bash
vi ~/.bash_profile
```
Add the export command for every environment variable you want to persist.
```bash
export RAILS_ENV=production 
export NODE_ENV=production 
export PASSENGER_COMPILE_NATIVE_SUPPORT_BINARY=0 
export PASSENGER_DOWNLOAD_NATIVE_SUPPORT_BINARY=0 
export PASSENGER_DISABLE_SECURITY_UPDATE_CHECK=true
```
Save your changes.

Adding the environment variable to a user’s bash profile alone will not export it automatically. However, the variable will be exported the next time the user logs in.

To immediately apply all changes to bash_profile, use the source command.

```bash
source ~/.bash_profile
```
### -----------------------------------------------------------------------------------------------------
### Rodar comandos no boot do servidor linux
Fiz as alterações como sudo, rodando:

```bash
sudo vi /etc/rc.local
```

Coloquei os comandos no final do arquivo

```bash
systemctl start nginx
runuser -l rubyuser -c 'cd /srv/www/htdocs/app1/    && passenger start'
runuser -l rubyuser -c 'cd /srv/www/htdocs/app2/  && passenger start'
runuser -l rubyuser -c 'cd /srv/www/htdocs/app3/ && passenger start'
rm -Rf /home/rubyuser/bamboo-agent-home/caches/
runuser -l rubyuser -c '/home/rubyuser/bamboo-agent-home/bin/bamboo-agent.sh start' 
```

Conceder acesso de execução no arquivo

```bash 
# Como sudo, rodar
chmod +x /etc/rc.d/rc.local
```
### -----------------------------------------------------------------------------------------------------
### Saber quais portas estão sendo utilizadas no linux
```bash
netstat -tulnp
```
Para capturar uma porta específica
```bash
netstat -tulnp | grep 3000
```
### -----------------------------------------------------------------------------------------------------
### Criar e remover link simbólico
```bash
# Criando
ln -s [caminho-original-para-fazer-link] [caminho-simbolico]

# Removendo
unlink [caminho-simbólico]
```
Li que é bom apontar para o path original e fazer o link sem a / no final do caminho
### -----------------------------------------------------------------------------------------------------
### Mexer nas configurações do postgressql
```bash
# Comandos execudatos como root $ sudo su -

# Achar o atributo porta neste arquivo
cat /var/lib/pgsql/12/data/postgresql.conf | grep port

# Entrar como vi e faz a alteração
vi /var/lib/pgsql/12/data/postgresql.conf

# Reiniciar o serviço postgresql-12
systemctl restart postgresql-12
```
### -----------------------------------------------------------------------------------------------------
### Ao atualizar o kernel do linux, fazer novo build do symantec
```bash
/root/install/sepfiles/src/ap-kernelmodule-14.0.3876-1100/build.sh --kernel-dir /usr/src/kernels/$(uname -r)
```
### -----------------------------------------------------------------------------------------------------
### Liberar portas firewall
Liberar uma porta por vez
```bash
iptables -S
firewall-cmd --zone=public --add-port=22/tcp --permanent 
firewall-cmd --zone=public --add-port=80/tcp --permanent 
firewall-cmd --zone=public --add-port=443/tcp --permanent 
firewall-cmd --reload
systemctl restart firewalld    
```
Liberar range de portas
```bash
iptables -S
firewall-cmd --zone=public --add-port=3000-3100/tcp --permanent 
firewall-cmd --reload
systemctl restart firewalld
```
### -----------------------------------------------------------------------------------------------------
### Verificar se o shell foi executado como sudo
```bash
if [ "$(id -u)" -ne 0 ]; then
  echo "Error - You need to execute this script as root/sudo"
  exit 1
fi
```
### -----------------------------------------------------------------------------------------------------
### Verificar se o shell foi chamado na mesma pasta onde ele se encontra
```bash
if [ "$(dirname $0)" != "." ]; then
  echo ": Error - You need to execute this command at same folder where it exists. Please, cd into the folder"
  exit 1
fi
```
### -----------------------------------------------------------------------------------------------------
### Imprimir data e hora no echo
```bash
echo "$(date)"
echo $(date)
echo "EXIBIR DATA E HORA ATUAL = $(date)"
```
### -----------------------------------------------------------------------------------------------------
### Descobrir tamanho das pastas linux
```bash
$ cd /path/to/some/where
$ du -hsx * | sort -rh | head -10
$ du -hsx -- * | sort -rh | head -10
```

### -----------------------------------------------------------------------------------------------------
### Subir apps Angular com Ionic
```bash
sudo docker container run --rm -it -v $(pwd):/srv -w /srv -p 8100:8100 -p 35729:35729 -p 53703:53703 node:latest /bin/bash 

npm install -g ionic
ionic serve


ionic-app-scripts serve --address localhost --port 8100 --livereload-port 35729 --dev-logger-port 53703 --nobrowser


# subir marciojg.github.io
sudo docker run --rm -it -v $(pwd):/usr/src/marciojg -w /usr/src/marciojg -p 4000:4000 ruby:latest /bin/bash

# @Subir bible
sudo docker container run --rm -it -v $(pwd):/srv -w /srv --net host -p 8100:8100 -p 35729:35729 -p 53703:53703 node:10 /bin/bash 

remover linha do xml e do package do plugin-search
sudo npm install -g ionic
sudo npm install
sudo ionic serve
```

### -----------------------------------------------------------------------------------------------------
### Comandos Básicos Unix
```
Cat = carrega conteúdo do arquivo
tail = carrega conteúdo do arquivo
tail -10 = carrega as últimas dez linhas do arquivo
tail -f = se pendura ao arquivo, mostrando as últimas coisas que estão sendo escritas nele
more = carrega do conteúdo do arquivoou de comandos paginado 
less = carrega o conteúdo do arquivo ou comando paginado e com os comandos vi
Cat arquivo.txt ou more arquivo.txt 
Ps aux | more ( divide por tela mas carrega em memória)
Ps aux | less (divide a tela mas carrega em stream, além de mostrar com comando vi)
Comandos vi -------
J e k = para cima e para baixo no arquivo (10j desce dez linhas)
gg = para o topo do arquivo
G = para o fim do arquivo
/blabla = procura este texto
n = pula para o próxima palavra encontrada
q = sair
Comandos vi -------------
O "|" pipe = permite juntar ou concatenar o stdoutput de um comando com o stdinput de outro ex
ps aux | grep bash = exibe processos rodando que possuam a palavra bash Como expressão regular
History = histórico de comandos
Crt + R = pesquisa comando no histórico
ASDF = gerenciador de versão universal (rvm + npm etc)
which = mostra de onde vem o comando (ex which echo retorna /bin/echo)
```
