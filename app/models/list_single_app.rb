class ListSingleApp < ActiveRecord::Base
  belongs_to :list
  belongs_to :single_app  
end