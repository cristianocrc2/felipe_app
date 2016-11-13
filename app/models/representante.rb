class Representante < ActiveRecord::Base
  belongs_to :fabricante
  has_one :user
end
