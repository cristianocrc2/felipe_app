class CreateRepresentantes < ActiveRecord::Migration
  def change
    create_table :representantes do |t|
      t.references :fabricante, index: true

      t.timestamps
    end
  end
end
