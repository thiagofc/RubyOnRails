class AddColumnHoursColaboratorToHoursRegistration < ActiveRecord::Migration
  def change
    add_column :hours_registrations, :colaborator, :string
  end
end
