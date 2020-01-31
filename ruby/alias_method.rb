# Heranca = Herdar comportamento (Pessoa1 < Pessoa2)
# Polimorfismo = multiplas formas (name sobrescrevendo name)

class Pessoa1
  def name
    puts 'Marcio'
  end
end

class Pessoa2 < Pessoa1
  def name
    puts 'Sr. Marcio'
  end
end

# Usando alias_method
# alias_method serve para trocar o nome de uma metodo da classe pai alias_method == super


class Pessoa1
  def ola
    'Ola Original'
  end
end

class Pessoa2 < Pessoa1

  alias_method :original_ola, :ola

  def ola
    'Ola sobrescrito'
  end

  def todos
    ola + '-----' + original_ola
  end
end

# Exemplo bom com modulo e referencia
https://www.youtube.com/watch?v=tys8rla16Vk&list=WL&index=12&t=54s
