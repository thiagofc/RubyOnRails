class AddUserIdToColaborator < ActiveRecord::Migration
  def change
    add_column :colaborators, :user_id, :integer
  end
end
