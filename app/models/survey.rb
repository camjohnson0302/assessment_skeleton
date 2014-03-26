class Thing < ActiveRecord::Base
  # Remember to create a migration!
  belongs_to  :user
  
  has_many    :takers,source: :user,through: :user_surveys
end
