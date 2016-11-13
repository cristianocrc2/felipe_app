class Fabricante < ActiveRecord::Base
  has_many :representantes
  has_one :user
  acts_as_votable 
end
