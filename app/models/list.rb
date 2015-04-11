class List < ActiveRecord::Base
  belongs_to :user
  #has_many :list_single_apps
  has_and_belongs_to_many :single_apps
end
