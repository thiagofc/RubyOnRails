class AddColumnColaboratorIdToHoursRegistrations < ActiveRecord::Migration
  def change
    add_column :hours_registrations, :colaborator_id, :integer
  end
end
