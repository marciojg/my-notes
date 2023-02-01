# freeze_string_literal: true

# INSTRUÇÕES
# Pegar os ids dos documentos
# Gerar url do doc-mangaer e alterar a constante
# instalar a gem abaixo
# gem install rest-client
# abrir irb
# irb -r ./download_presigned_document
# iterar os documents_ids
# ["f6b0c4ac-14d7-4660-bd61-462b2a04ec7a"].each { |id| DownloadPresignedDocument.new(id).call }
# os documentos vão aparecer na mesma pasta em que executou o script

require "json"
require "rest_client"

class DownloadPresignedDocument
  SERVICE_HOST = "http://localhost:35561"

  def initialize(document_id)
    @document_id = document_id
  end

  def call
    fetch_document_url
    download_document
    sleep 2
  rescue => e
    puts e.message
    raise
  end

  private

  def fetch_document_url
    response = RestClient::Request.execute(
      method: :get,
      url: "#{SERVICE_HOST}/documents/#{@document_id}/url"
    )

    body = JSON.parse(response.body)
    @url = body.dig("data", "attributes", "get_presigned_url")
  end

  def download_document
    response = RestClient::Request.execute(
      method: :get,
      url: @url,
      raw_response: true
    )

    File.open(url_basename, "w") { |f| f.write(response.file.open.read) }

    response.file.close!
  end

  def url_basename
    return unless @url.is_a?(String)

    File.basename(@url, "?*")
  end
end
