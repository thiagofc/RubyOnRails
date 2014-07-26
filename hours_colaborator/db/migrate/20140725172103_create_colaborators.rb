class CreateColaborators < ActiveRecord::Migration
  def change
    create_table :colaborators do |t|
      t.string :registration
      t.string :name
      t.string :email

      t.timestamps
    end
  end
end
