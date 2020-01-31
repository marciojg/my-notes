# metodos podem receber blocos e esses blocos podem ser blocos de codigo ou metodos que podemos executar usando por exemplo isntance_eval dentro do metodo
```ruby
class ClasseBloco
  def metodo1
    puts 'metodo1'
  end
  
  def metodo2
    puts 'metodo2'
  end
  
  def metodo_que_aceita_bloco(&bloco)
    instance_eval(&bloco)
  end
end
```

# ```ruby
#    teste = Teste.new 
# .. teste.metodo_que_aceita_bloco do 
# ..   metodo1 
# ..   metodo2 
# .. end
# metodo1
# metodo2
# => nil
# ```


referencia:
https://www.youtube.com/watch?v=_LGfJHrl1Fo
