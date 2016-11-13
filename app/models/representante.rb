class Representante < ActiveRecord::Base
  belongs_to :fabricante
  has_one :user
  acts_as_votable 
end
