class Perla < ActiveRecord::Base
  attr_accessible :first_name, :last_name
  
  has_many :comments
  has_many :citaziones
  
end
