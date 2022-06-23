## rabbitmq (feito em erlang)

pode configurar para as mensagens serem persistentes e as filas serem persistentes(duravel) ou não
```
- se for persistente, salva do banco ate o ack porem, eh mais lento
- se nao for persistente, msg fica em memoria, mas eh mais rapido.
```
  
exchange (corretor) = controla a mensagem recebido pelo producer e direciona para a fila correspontente.

```
Sua regra pode mudar de acordo com seu tipo (mensagem.routerKey)
    - direct = mensagem.name-queue envia para a fila com a binding key exata, ou seja, nome: name-queue
    - topic = mensagem.name-queue envia para as filas com a binding key *.name-queue ou
          mensagem.name-queue.blabla envia para as filas com a binding key *.name-queue.*
    - fanout = mensagem.name-queue envia para todas as filas conectadas na exchange independente de seu binding.key
    - headers = pela pelo header a mensagem (pouco usada)
```

consumer
```
- quando recebe a mensagem e devolve um status code
    - ack = avisa que recebeu com sucesso e o exchange pode descartar a msange
      - auto ack = independente de conseguiu processar a msg ou não a mensagem é descartada
    - nack/reject = avisar que ocorreu um erro ao receber a mensagem (msg com formato invalido, por ex)
      - exchange trata de varias formas, tenta de novo, teste 3 vezes, manda pra outra fila ou ate cair no dead letter
```
