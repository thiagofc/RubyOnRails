class RenameUserIdToUserAppId < ActiveRecord::Migration
  def change
  	rename_column :colaborators, :user_id, :user_app_id
  end
end