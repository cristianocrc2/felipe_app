class CreateFabricantes < ActiveRecord::Migration
  def change
    create_table :fabricantes do |t|

      t.timestamps
    end
  end
end
