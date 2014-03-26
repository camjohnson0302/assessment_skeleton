class User < ActiveRecord::Base
  has_secure_password #<==Bcrypt

  has_many :things
  
  has_many :taken_surveys,source: :survey, through: :user_surveys
#^^^has_many through: syntax

has_many :minions, class_name: "EvilHenchmen", foreign_key: :overlord_id
#^^^foreign key syntax



  validates :email, presence: true, uniqueness: true
  validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i, :on => :create
  validates :password, presence: true
end




