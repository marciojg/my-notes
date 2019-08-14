
# Ionic-4

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
  Ionic, antes de qualquer coisa, é um [Framework](https://pt.wikipedia.org/wiki/Framework). Uma analogia que sempre faço é que ele é o mesmo que o já famoso [Bootstrap](https://getbootstrap.com/).
	Uma definição oficial é que ele é um kit de ferramentas de interface do usuário (UI) de código aberto para a criação de aplicativos móveis e de desktop de alto desempenho e de alta qualidade, usando HTML, CSS e JavaScript. Nesta versão possui integração oficial com o Framework Angular, e suporte com Vue e React estão em desenvolvimento.
	Um conceito importante é que ele é limpo, bonito, simples focado no usuário (funcional) e principalmente adota o conceito "Write once, run anywhere. (Escreva uma vez e rode em qualquer lugar)", visto que as aplicações criadas usando o Ionic são possíveis de serem rodas em IOS, Android, Web, Windows Phone (se ainda existir rs). Portanto, o adjetivo principal, ele é multi-plataforma.

## O que não é
- Não é uma linguagem de programação
- Não é dependente do Angular, apesar de geralmente ser usado com o mesmo e ter suporte oficial à ele. O Ionic pode ser usado como um kit de ferramentas UI isolado.

## Diferenças com Ionic 3
[https://ionicthemes.com/tutorials/about/ionic-4-vs-ionic-3](https://ionicthemes.com/tutorials/about/ionic-4-vs-ionic-3) pegar desse site

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
