class SingleApp < ActiveRecord::Base
  has_many :user
  has_many :lists, through: :lists_single_apps
end
