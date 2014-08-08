class ChangeColumnFromBooleanToInteger < ActiveRecord::Migration
  def change
  	change_column :hours_registrations, :approved, :integer
  end
end
