# Atendendo a determinação https://jsonapi.org/format/#content-negotiation-servers devemos forçar o retorno como json e com o content_type correto
# Colocar em config/initializers/mime_types.rb
Mime::Type.register "application/vnd.api+json", :json
