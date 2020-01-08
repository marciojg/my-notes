# **Árvore de termos**

Esta árvore é composta por termos em geral da área de Desenvolvimento de Software que vai me auxiliar a fixar conceitos, tecnologias e termos que tenho estudado. Serão basicamente colagens de artigos, livros, cursos com mínimos toque de entendimento pessoa.

<!-- /TOC -->

- [DDD - Domain-Driver Design - Projeto Orientado a Domínio](#DDD---Domain-Driver-Design---Projeto-Orientado-a-Domínio)
  - [Domain Expert](#Domain-Expert)
  - [Linguagem ubíqua](#Linguagem-ubíqua)
  - [Modelo](#Modelo)

<!-- /TOC -->

- # DDD - Domain-Driver Design - Projeto Orientado a Domínio
  DDD é guiarmos a construção de sofware com base no conhecimento, na modelagem do negócio (atividades desempenhadas pelo usuário e a sua área de interesse), sem a preocupação imediata de SGBD, relacionamento entre entidades e etc, ou seja, sem qualquer apelo por tecnologia, isso tudo vem depois. 
    
  Portanto DDD é sobre negócio, sobre o interesse e conhecimento do usuário. Não é um arquitetura em camadas, não é um novo padrão de refatoração de código, não é uma tecnologia ou basicamente uma metodologia.
    
  Consequentemente com sua filosofia focada no domínio do negócio é uma excelente estratégia para se entregar um software de qualidade mais alta e resolver problemas de sofwares grandes/complexos.

  Se há algo que precisa ficar na mente quando o conceito é DDD são essas palavras-chave: Domínio do negócio, escutar, compreender, comunicar, modelagem do negócio, interesse do usuário.

 
  - ## Domain Expert - Especialistas do domínio 
    É aquele que entende do negócio. Apoia o time de desenvolvimento na modelagem do domínio.
    
    São usuários, analistas e outros especialistas da área que juntamente com os desenvolvedores e arquitetos trabalham de mãos dadas com um objetivo em comum: construir software guiado pelo domínio para atender as necessidades do cliente.
    
  - ## Linguagem ubíqua
    A linguagem ubíqua não é a linguagem do negócio, não é um pattern. É a linguagem utilizada pela equipe do projeto. É uma linguagem universal. É o meio termo entre a liguagem que a equipe de desenvolvimento entende e que o usuário entende. Pode ser em forma de desenho e com termos comum a ambos, onde sim, os nomes usados no software deve refletir o termo da realidade.

    É necessário que todos usem uma linguagem em comum e que não haja tradução na comunicação entre os membros do time(devs e negócio).
    
    Nessa linguagem estão termos que fazem parte das conversas diárias entre especialistas de negócio e times de desenvolvimento. Todos devem usar os mesmos termos tanto na linguagem falada quanto no código. Isso significa que, se durante uma conversa com um cliente do sistema de cobrança, por exemplo, ele disser: "Temos que emitir a fatura para o cliente antes da data limite", vamos tem no nosso código alguma coisa do tipo:

    ```
    > uma classe para a entidade Cliente
    > uma classe para a entidade Fatura
    > Algum serviço que tenha um método emitir
    > algum atributo que chame data limite
    ```

  - ## Modelo
    Aqui começa virar um UML da vida.. para conseguirmos abstrair a complexidade do negócio através de uma reprentação simplificada. Mas ainda sem as minúcias especificamente técnicas como relacionamentos e etc. Ele uma simplificação, uma interpretação da realidade que abstrai os aspectos relevantes para resolver o problema em questão. 
    
    O modelo serve como algo comum e palpável a todos os membros do time, refletindo a linguagem ubíqua, que, junto com ela, permite que todos possam participar ativamente da construção progressiva do mesmo.
      
    Outra boa definição é que o modelo é o conhecimento destilado — é o modo como o time concorda em estruturar o conhecimento extraído do domínio.

  ## Referências
  [Domain-Driven Design - Conceitos básicos](https://www.brunobrito.net.br/domain-driven-design/)

  [O que é Domain Driven Design?](https://blog.locaweb.com.br/artigos/metodologias-ageis/o-que-e-domain-driven-design/)

  [Desmistificando o DDD](https://www.lambda3.com.br/2017/10/desmistificando-o-ddd/)

  [Domain-Driven Design, do início ao código](https://medium.com/cwi-software/domain-driven-design-do-in%C3%ADcio-ao-c%C3%B3digo-569b23cb3d47)

  [How to start with Domain-Driven Design?](https://medium.com/@m.merkulov/how-to-start-with-domain-driven-design-38561173f77a)

___________


```
**Próximos termos**
- Business Agility
  - VUCA
  - APM (Confiança)
- SOLID
- # OOP - Object-oriented programming - Programação Orientada a Objetos
  - ## Classe
  - ## Herança
  - ## Polimorfismo
  - ## Encapsulamento
  ## Referências
```
