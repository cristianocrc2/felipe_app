class AddProdutoToUsers < ActiveRecord::Migration
  def change
    add_reference :users, :produto, index: true
  end
end
