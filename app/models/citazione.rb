class Citazione < ActiveRecord::Base
  attr_accessible :citazione, :date_time, :id, :user
  
  belongs_to :perla
end
