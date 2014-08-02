class AddManagerIdToColaborators < ActiveRecord::Migration
  def change
    add_column :colaborators, :managerId, :integer
  end
end
