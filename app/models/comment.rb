class Comment < ActiveRecord::Base
  belongs_to :photo
  belongs_to :user
  belongs_to :perla
  
end
