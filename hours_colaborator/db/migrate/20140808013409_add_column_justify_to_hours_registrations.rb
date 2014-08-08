class AddColumnJustifyToHoursRegistrations < ActiveRecord::Migration
  def change
    add_column :hours_registrations, :justify, :string
  end
end
