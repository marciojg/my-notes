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
