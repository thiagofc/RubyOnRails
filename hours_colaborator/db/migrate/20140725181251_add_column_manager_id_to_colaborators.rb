class AddColumnManagerIdToColaborators < ActiveRecord::Migration
  def change
    add_column :colaborators, :manager_id, :integer
  end
end
