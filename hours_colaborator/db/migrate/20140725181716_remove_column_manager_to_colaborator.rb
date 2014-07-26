class RemoveColumnManagerToColaborator < ActiveRecord::Migration
  def change
    remove_column :colaborators, :manager, :string
  end
end
