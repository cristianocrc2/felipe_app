class CreateProdutos < ActiveRecord::Migration
  def change
    create_table :produtos do |t|
      t.references :fabricante, index: true

      t.timestamps
    end
  end
end
