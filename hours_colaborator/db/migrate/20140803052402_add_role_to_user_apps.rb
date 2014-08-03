class AddRoleToUserApps < ActiveRecord::Migration
  def change
    add_column :user_apps, :role, :string
  end
end
