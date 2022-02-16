# Criando metódo getter estático que soma valor a cada instância de uma classe. 
# Comparação com C# 
=begin
class Exemplo {
  public static int value { get; private set; }
  
  public Exemplo()
  {
      Exemplo.value++;
  }
}
=end

class Exemplo
  @@value = 0
  @@value2 = 0

  def self.value
    @@value
  end

  def self.class_variable_set(attr, value)
    puts "entrei #{attr} #{value}"
    if attr == '@@value'
      raise(NameError, "cannot change @@value") 
    end

    super
  end

  def initialize(*args)
    @@value += 1
  end
end

Exemplo.new
Exemplo.new
Exemplo.new
Exemplo.class_variable_set("@@value2", 99)
# Exemplo.class_variable_set("@@value", 23) raise error
# Exemplo.value = 23 undefined method
puts Exemplo.class_variable_get("@@value2")
puts Exemplo.value
