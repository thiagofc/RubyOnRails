class AddDefaultValueToHoursRegistration < ActiveRecord::Migration
  def change
  	change_column :hours_registrations, :approved, :boolean, :default => false
  end
end
