### descobrir porta usada
```bash
lsof -i -P -n | grep 
```

### derrubar serviço 
```bash
kill -9 <PID>
```

### descobrir pid do serviço
```bash
ps aux | grep
ps aux | grep -i firefox
```

### lista arquivos e tamanho humanizado
```bash
ls -lhat
```

### descobrir portar abertas num host
```bash
nmap <host>
```

### Assistir algum evento, evitando rodar o comando várias vezes
```bash
watch '<qq comando>'

ex: watch 'docker ps -a'
    watch 'kubectl get pods' 
```
