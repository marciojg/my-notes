change_table :revenue, bulk: true do |t|
  t.date :reference_date
  t.decimal :single_price_pu, precision: 32, scale: 8
  t.decimal :quantity, precision: 32, scale: 8
end

# funciona de igual modo

+  def change
+    add_column :revenue, :reference_date, :date
+    add_column :revenue, :single_price_pu, :decimal, precision: 32, scale: 8
+    add_column :revenue, :quantity, :decimal, precision: 32, scale: 8
+  end
