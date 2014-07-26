class CreateHoursRegistrations < ActiveRecord::Migration
  def change
    create_table :hours_registrations do |t|
      t.string :date
      t.string :entrance1
      t.string :exit1
      t.string :entrance2
      t.string :exit2
      t.string :entrance3
      t.string :exit3

      t.timestamps
    end
  end
end
