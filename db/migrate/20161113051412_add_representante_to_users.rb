class AddRepresentanteToUsers < ActiveRecord::Migration
  def change
    add_reference :users, :representante, index: true
  end
end
