class RemoveColumnHoursColaboratorToHoursRegistration < ActiveRecord::Migration
  def change
    remove_column :hours_registrations, :colaborator, :string
  end
end
