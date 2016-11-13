class Produto < ActiveRecord::Base
  belongs_to :fabricante
  has_one :categoria
  acts_as_votable 
end
