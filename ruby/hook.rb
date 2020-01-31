# Hook = são ganchos, ao fazer x coisa, execute outra automaticamente

# Hook de modulo
module Modulo
  def self.included(klass)
    puts "Modulo #{self} incluso em #{klass}"
  end

  def self.extended(klass)
    puts "Modulo #{self} extendido em #{klass}"
  end
end

### Executando

#    class Teste 
# ..   include Modulo 
# .. end
# Modulo Modulo incluso em Teste
# => Teste

# class Teste2 
# ..   extend Modulo 
# .. end
# Modulo Modulo extendido em Teste2
# => Teste2


# Hook de Herança
class Pai
  def self.inherited(klass)
    @klasses ||= []
    @klasses.push klass

    @klasses.each do |klass|
      puts "Classe #{self} foi herdada em #{klass}"
    end
  end
end

#    class Filho1 < Pai 
# .. end 
# ..  
# .. class Filho2 < Pai 
# .. end 
# ..  
# .. class Filho3 < Pai 
# .. end
# Classe Pai foi herdada em Filho1
# Classe Pai foi herdada em Filho1
# Classe Pai foi herdada em Filho2
# Classe Pai foi herdada em Filho1
# Classe Pai foi herdada em Filho2
# Classe Pai foi herdada em Filho3
# => nil


Referencia: https://www.youtube.com/watch?v=uOOWUqwDgLE&list=WL&index=11
