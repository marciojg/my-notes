# :class_eval = Escreve o arquivo de classe. Quando há uma nova instancia da classe o metodo que foi definido por ele existirá
# :instance_eval = Escreve quem o chamou, sendo instancia ou a própria classe. Além, disso o instance_eval abre os metodos e atributos da classe, inclusive os privados
```ruby
class Teste
end

Teste.class_eval do
  self.instance_eval do
    def metodo1
      puts 'metodo1'
    end
  end

  def metodo2
    puts 'metodo2'
  end

  def self.metodo3
    puts 'metodo3'
  end
end
```

###################################
# executanto
###################################
# ```ruby
#    Teste.methods.grep(/metodo/)
# => [:metodo1, :metodo3]
#    Teste.new.methods.grep(/metodo/)
# => [:metodo2]
# ```

```ruby
teste = Teste.new

teste.instance_eval do
  def metodo4
    puts 'metodo4'
  end

  def self.metodo5
    puts 'metodo5'
  end

  self.class.class_eval do
    def metodo6
      puts 'metodo6'
    end
  end
end
```

###################################
# executanto
###################################
# ```ruby
#    teste.methods.grep(/metodo/)
# => [:metodo4, :metodo5, :metodo2, :metodo6]
#    teste.class.methods.grep(/metodo/)
# => [:metodo1, :metodo3]
#    Teste.methods.grep(/metodo/)
# => [:metodo1, :metodo3]
#    Teste.new.methods.grep(/metodo/)
# => [:metodo2, :metodo6]
# ```

# Abrindo atributos/metodos privados da classe com instance_eval

```ruby
class Teste

  private

  attr_reader :name

  def metodo_privado
    puts 'sou privado'
  end
end
```

#  ```ruby
#   teste = Teste.new
# => #<Teste:0x000055a167cd0ab0>
#    teste.name
# private method `name' called for #<Teste:0x000055a167cd0ab0>
# (repl):1:in `<main>'
#    teste.metodo_privado
# private method `metodo_privado' called for #<Teste:0x000055a167cd0ab0>
# (repl):1:in `<main>'
#    teste.instance_eval { name }
# => nil
#    teste.instance_eval { metodo_privado }
# sou privado
# => nil
#  ```
