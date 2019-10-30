Fazer um artigo sobre isso
------------------------------
has_and_belongs_to_many :documents, validate: true

accepts_nested_attributes_for :documents, allow_destroy: true

documents.size = 3 = instancias na tela 
documents.count = 1 = persistidos
# documents.select(&:marked_for_destruction?).size documents.select(&:marked_for_destruction?).count
documents.select(&:persisted?).count = 1 = persistidos
documents.select { |document| document.new_record? || document.persisted? }.count = persistidos e novos objetos
colocar link do rails falando pra nao usar basicamente rs e botar o metodo com select por ser mais facil entendimento na leitura do codigo


Isso tudo acontece quando usar has_and_belongs_to_many com nested attributos e ainda permite destroy

validate :documents_must_not_be_empty_when_reason_require
  def documents_must_not_be_empty_when_reason_require
    remote_byebug
    errors.add(:documents, :blank) if (documents.blank? || documents.select { |document| document.new_record? || document.persisted? }.count == documents.select(&:persisted?).select(&:marked_for_destruction?).count) && !reasons_that_documents_are_not_required.include?(reason.internal_name)
  end
------------------------------
