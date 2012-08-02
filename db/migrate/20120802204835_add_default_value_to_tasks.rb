class AddDefaultValueToTasks < ActiveRecord::Migration
  def change
  	change_column :tasks, :state, :boolean, :default => false
  end
end
