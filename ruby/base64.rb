# Reference url https://stackoverflow.com/questions/1547008/how-to-encode-media-in-base64-given-url-in-ruby

# Ler arquivo comum, encodar para base 64 e escrever esse conteúdo em outro arquivo

require 'base64'
encoded_string = Base64.encode64(File.open("file_path", "rb").read)

File.open(file_name_to_create, "wb") do |file|
    file.write(encoded_string)
end


------------------------------------------------

# Fazer conversão em lote

require 'base64'

folder_dir = "spec/fixtures/revenue_upload/"
files = Dir.entries(folder_dir).select { |f| !File.directory? f} 

files.each do |file_xlsx|
  encoded_string = Base64.encode64(File.open("#{folder_dir}#{file_xlsx}", "rb").read)

  File.open("#{folder_dir}#{file_xlsx}.base64", "wb") do |file|
      file.write(encoded_string)
  end
end
