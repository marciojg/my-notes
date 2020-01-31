# include = atribui attr e metodo na instancia
# extend = atribui attr e metodo na classe (extende comportamento)


```ruby
module Metodo1
  def metodo1
    puts 'metodo1'
  end
end

module Metodo2
  def metodo2
    puts 'metodo2'
  end
end

class Teste
  include Metodo1
  extend Metodo2
end
```

# ```ruby
#    Teste.metodo1
# undefined method `metodo1' for Teste:Class
# Did you mean?  metodo2
# (repl):1:in `<main>'
#    Teste.metodo2
# metodo2
# => nil
#    Teste.new.metodo1
# metodo1
# => nil
#    Teste.new.metodo2
# undefined method `metodo2' for #<Teste:0x000055afcc8fa1e8>
# Did you mean?  metodo1
# (repl):1:in `<main>'
# ```
