class AddFabricanteToUsers < ActiveRecord::Migration
  def change
    add_reference :users, :fabricante, index: true
  end
end
