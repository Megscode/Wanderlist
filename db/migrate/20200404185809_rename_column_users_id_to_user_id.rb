class RenameColumnUsersIdToUserId < ActiveRecord::Migration[6.0]
  def change
    rename_column :routes, :users_id, :user_id
  end
end
