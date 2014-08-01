class AddApprovedToHoursRegistrations < ActiveRecord::Migration
  def change
    add_column :hours_registrations, :approved, :boolean
  end
end
