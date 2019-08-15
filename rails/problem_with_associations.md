docie do deferred

linha de codigo do rails que ta cagado:
https://github.com/rails/rails/blob/v5.2.3/activerecord/lib/active_record/associations/association.rb#L73
https://guides.rubyonrails.org/association_basics.html#methods-added-by-has-and-belongs-to-many-collection-objects
https://api.rubyonrails.org/classes/ActiveRecord/Associations/ClassMethods.html

@solucao
https://stackoverflow.com/questions/38616387/how-to-validate-presence-of-associated-records-in-case-of-has-many-through-ass


Problema:
  As associações do tipo has_and_belongs_to_many e o has_many com through, executam a ação diretamente do collection que é criado
  basicamente uma associação da classe Association é regida por outra é que a ProxyAssociation(https://api.rubyonrails.org/classes/ActiveRecord/Associations/CollectionProxy.html)
  então basicamente quando faz atributos = [alguma coisa] ele simplesmente RODA! sem do nem piedade.
  A pegada está no no método 'associacao=(valor)'(https://guides.rubyonrails.org/association_basics.html#methods-added-by-has-and-belongs-to-many-collection-objects)

  Tentei solução como substituir associacao has_and_belongs_to_many eplo through mas o problema continuava.
  tentei criar validação dentro das tres classes x - meio - y, nada.
  Teitei utilizar o callbacks dessas funcoesn como before_delete ou after_delete, ja que meu problema era quando removia todos 
  os dados. ah nao contei ne..

  tenho uma classe e valida certinho no create mas na hora de atualizar se o campo multiplo for enviado como um array vazio ou melhor
  [''] no mesmo instante o delete no banco rola. (mas ainda nao rodou o objeto save), Dai ao dar objeto.save um erro é retornado 
  pq estava validando esse atributo associado para ser sempre presente. mas ai ja era. a associacao ja foi removida e cagada ta feita

  tentei usar outro cara é o autosave: false. sim talvez ao salvar ou criar ele seja util mas para meu caso de nao deixar a associacao
  vazia, nao ajudou em nada.

  dai criei/copiei descaradamente do stackoverflow hehe a solução inical

  ```
  https://gist.github.com/marcioJesus/f158776a205770db6a14656ed5f23326
  ```

  ```
  https://gist.github.com/marcioJesus/f158776a205770db6a14656ed5f23326 --- criar com a versão com through
  ```

  que depois foi convertida em um concern bonitinho.

  ```
  segue a vida
  ```  


-------------------------------------------------------------------------
# possivel solução para os casos de validar duplicidade
# Use the distinct method to keep the collection free of duplicates. This is mostly useful together with the :through option.
# https://guides.rubyonrails.org/association_basics.html#scopes-for-has-many-distinct
has_and_belongs_to_many :roles, -> { uniq }
