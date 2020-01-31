
# const_set = cria uma contante se nao existir

class Module
  const_set('Teste', Class.new)
end  

###### Executando

#   Module::Teste.new
# => #<Module::Teste:0x000055abd524a550>
   

# Referencia: https://apidock.com/ruby/v1_8_6_287/Module/const_set

# https://www.youtube.com/watch?v=AXbcuR3JNq0&list=WL&index=12
