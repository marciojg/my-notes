# Altera a FK e mantem o sequece ativo
class CreateClient < ActiveRecord::Migration[6.0]
  def change
    create_table :client, id: :integer, primary_key: :code do |t|
      t.string :name
    end
  end
end

# schema.rb
create_table "client", primary_key: "code", id: :integer, force: :cascade do |t|
  t.string "name"
end

# Altera a FK e depende do envio do code
class CreateClient < ActiveRecord::Migration[6.0]
  def change
    create_table :client, id: :integer, primary_key: :code, default: nil do |t|
      t.string :name
    end
  end
end

# schema.rb
create_table "client", primary_key: "code", id: :integer, default: nil, force: :cascade do |t|
  t.string "name"
end


# Altera a FK e depende do envio do code mas nao cria um relacionamento com outra tabela
create_table :client, id: false do |t|
  t.integer :code, index: { unique: true }
  t.string :name
  t.timestamps
end

# schema.rb
create_table "client", id: false, force: :cascade do |t|
  t.integer "code"
  t.string "name"
  t.datetime "created_at", precision: 6, null: false
  t.datetime "updated_at", precision: 6, null: false
  t.index ["code"], name: "index_advisor_on_code", unique: true
end
