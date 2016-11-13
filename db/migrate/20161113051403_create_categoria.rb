class CreateCategoria < ActiveRecord::Migration
  def change
    create_table :categoria do |t|
      t.references :produto, index: true
      t.string :categoria

      t.timestamps
    end
  end
end
