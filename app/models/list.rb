class List < ActiveRecord::Base
  belongs_to :user
  has_many :single_apps, through: :lists_single_apps
end
