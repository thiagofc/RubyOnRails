class RemoveManagerIdToColaborators < ActiveRecord::Migration
  def change
    remove_column :colaborators, :managerId, :integer
  end
end
