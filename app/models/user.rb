class User < ActiveRecord::Base
  has_many :lists
  has_many :single_apps, through: :lists 
end
