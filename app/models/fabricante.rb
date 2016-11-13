class Fabricante < ActiveRecord::Base
  has_many :representantes
  has_one :user
end
