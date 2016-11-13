class Produto < ActiveRecord::Base
  belongs_to :fabricante
  has_one :categoria
end
