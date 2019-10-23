Solução encontrada para não precisar tantos parametros para subir o passenger.

Comando usado inicialmente para subir uma aplicação

```
PASSENGER_COMPILE_NATIVE_SUPPORT_BINARY=0 PASSENGER_DOWNLOAD_NATIVE_SUPPORT_BINARY=0 PASSENGER_DISABLE_SECURITY_UPDATE_CHECK=0 passenger start --address 0.0.0.0 --port 3000 --environment production --daemonize
```

Algumas dessas diretivas são opicionais visto os valores são os mesmos do usado por padrão:
--address 0.0.0.0 (valor Default)
--port 3000 (valor Default)
--environment production 
--daemonize

As diretivas/variaveis antes do comando são usadas para evitar basicamente esses "erros" na inicialização da aplicação:
```
 [passenger_native_support.so] trying to compile for the current user (rubyuser) and Ruby interpreter...
     (set PASSENGER_COMPILE_NATIVE_SUPPORT_BINARY=0 to disable)
     Warning: compilation didn't succeed. To learn why, read this file:
     /tmp/passenger_native_support-11kok5w.log
 [passenger_native_support.so] finding downloads for the current Ruby interpreter...
     (set PASSENGER_DOWNLOAD_NATIVE_SUPPORT_BINARY=0 to disable)
     Could not download https://github.com/phusion/passenger/releases/download/release-6.0.4/rubyext-ruby-2.6.5-x86_64-linux.tar.gz: The requested URL returned error: 404 Not Found
     Trying next mirror...
     Could not download https://oss-binaries.phusionpassenger.com/binaries/passenger/by_release/6.0.4/rubyext-ruby-2.6.5-x86_64-linux.tar.gz: The requested URL returned error: 404 Not Found
     Trying next mirror...
     Could not download https://s3.amazonaws.com/phusion-passenger/binaries/passenger/by_release/6.0.4/rubyext-ruby-2.6.5-x86_64-linux.tar.gz: The requested URL returned error: 403 Forbidden
 [passenger_native_support.so] will not be used (can't compile or download)
  --> Passenger will still operate normally.
=============== Phusion Passenger Standalone web server started ===============
PID file: /srv/www/htdocs/qualidade-validacao/tmp/pids/passenger.3001.pid
Log file: /srv/www/htdocs/qualidade-validacao/log/passenger.3001.log
Environment: staging
Accessible via: http://0.0.0.0:3001/

Serving in the background as a daemon.
Problems? Check https://www.phusionpassenger.com/library/admin/standalone/troubleshooting/
===============================================================================
```
Que apesar dos "errors" apresentados pois o acesso da internet não permita que ele baixe o que está tentando baixar a aplicação sobe.

mas add as variaveis na frente fica tudo bonito:
```
[passenger_native_support.so] not compiling because PASSENGER_COMPILE_NATIVE_SUPPORT_BINARY=0
 [passenger_native_support.so] not downloading because PASSENGER_DOWNLOAD_NATIVE_SUPPORT_BINARY=0
 [passenger_native_support.so] will not be used (can't compile or download)
  --> Passenger will still operate normally.
=============== Phusion Passenger Standalone web server started ===============
PID file: /srv/www/htdocs/qualidade-validacao/tmp/pids/passenger.3001.pid
Log file: /srv/www/htdocs/qualidade-validacao/log/passenger.3001.log
Environment: staging
Accessible via: http://0.0.0.0:3001/

Serving in the background as a daemon.
Problems? Check https://www.phusionpassenger.com/library/admin/standalone/troubleshooting/
===============================================================================
```

uma solução para usar menos comandos é usar o arquivo  Passengerfile.json com os valores
```
{
  "address": "0.0.0.0",
  "port": 3000,
  "environment": "production",
  "daemonize": true,
  "disable_security_update_check": true
}
```
da pra notar que usei a diretiva disable_security_update_check que anula a necessidade da PASSENGER_DISABLE_SECURITY_UPDATE_CHECK=0 mas os outros não tem :/
apesar da doc falar (ACHEI EM ALGUM LUGAR QUE FALAR Q DA PRA SUBSTIUIR TUDO)
mas nesse links não tem todos os suportados:
https://www.phusionpassenger.com/library/config/standalone/reference/#configuration-reference-for-passenger-standalone

Não esquecer de falar que etaou usando o passsenger em modo standalone

FONTE:
https://www.phusionpassenger.com/library/config/standalone/reference/#configuration-reference-for-passenger-standalone
https://www.phusionpassenger.com/library/config/standalone/intro.html#introduction-to-configuring-passenger-standalone
https://www.phusionpassenger.com/library/walkthroughs/deploy/ruby/ownserver/standalone/oss/deploy_app_main.html
