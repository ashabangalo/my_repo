class AddStatusToSprintcard < ActiveRecord::Migration[5.1]
  def change
    add_column :sprintcards, :status, :string
  end
end
