class AddColumnForTaskCompletion < ActiveRecord::Migration

	def change
		add_column :tasks, :state, :boolean
	end
	
  # def up
  # end

  # def down
  # end
end
