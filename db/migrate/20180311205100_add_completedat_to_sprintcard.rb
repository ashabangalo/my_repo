class AddCompletedatToSprintcard < ActiveRecord::Migration[5.1]
  def change
    add_column :sprintcards, :completedat, :datetime
  end
end
