class Task < ActiveRecord::Base
  attr_accessible :state, :task, :list_id 
  belongs_to :list
end
