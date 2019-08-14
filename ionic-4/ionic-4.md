# Ionic-4.js

<!-- TOC -->

- [Ionic 4](#ionic-4)
  - [O que é](#o-que-é)
  - [O que não é](#o-que-não-é)
  - [Diferenças com Ionic 3](#diferencas-com-ionic-3)
- [Hello World](#hello-world)
  - [Teste 123](#teste-123)
- [Eventos](#eventos)


<!-- /TOC -->

## O que é
Texto

## O que não é
- texto1

## Diferenças com Ionic 3
texto aqui

# Hello World

**Exemplo em nodejs**
A aplicação base em node seria (em um arquivo app.j):

```js
var http = require('http'); //Incluindo uma nova biblioteca

http.createServer(function(request, response) {

  response.writeHead(200); //Retorna o status 200 OK a Sintaxe aqui é rs.writeHead(<status>, {"header":"value"})
  response.write("Hello World"); //Retorna o body text/plain com o texto "Hello World"
  response.end(); //Finaliza a resposta

}).listen(8080); //Listen na porta 8080

console.log("Listening on port 8080");
