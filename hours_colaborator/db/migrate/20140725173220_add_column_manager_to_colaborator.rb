class AddColumnManagerToColaborator < ActiveRecord::Migration
  def change
    add_column :colaborators, :manager, :string
  end
end
