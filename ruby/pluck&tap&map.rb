https://videosdeti.com.br/conhecendo-os-metodos-map-collect-e-pluck/

#pluck
https://apidock.com/rails/ActiveRecord/Calculations/pluck
# Este método tem uso como select no activerecord

array = ['bla1', 'bla2', 'bla3']
Classe.ransack({}).result.pluck('bla1', 'bla2', 'bla3') = Classe.ransack({}).result.pluck(*array)

#tap
manipula o array atual. no fim do and ele esta alterado.

#map
gera um novo array
