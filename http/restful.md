# TEST = REST nada mais é que um conjunto de melhores práticas denominadas constraints(caracteristicas)
  - Cliente/Servidor
    - A principal característica dessa constraint é separar as responsabilidades de diferentes partes de um sistema.
  - Stateless
    - Essa característica propõe que cada requisição ao servidor não deve ter ligação com requisições anteriores ou futuras, ou seja, cada requisição deve conter todas as informações necessárias para que ela seja tratada com sucesso pelo servidor.
  - Cache
    - Para uma melhor performance, um sistema REST deve permitir que suas respostas sejam passíveis de cache.
  - Interface Uniforme
    - Bastante esforço deve ser feito para que o sistema possua uma interface modelada seguindo alguns padrões importantes, como por exemplo:
      ■ Recursos
      ■ Mensagens autodescritivas
      ■ Hypermedia
  - Sistema em camadas
    - Com o intuito de permitir a escalabilidade necessária para grandes sistemas distribuídos, um sistema REST deve ter a capacidade de adicionar elementos intermediários e que sejam totalmente transparentes para seus clientes. Ex: Balanceador de Carga
  - Código Sob Demanda (Opcional)
    - A ideia é aumentar a flexibilidade dos clientes, como por exemplo um código javascript que só é baixado quando uma determinada página é carregada.
# API HTTP = Se temos uma API que não segue os princípios REST, teremos apenas uma API HTTP
# RESTful = Se temos uma API que implementa essas características, estaremos falando de uma implementação RESTful

Fonte:

https://www.udemy.com/course/rubyonrails-api/learn/lecture/6546304#overview
