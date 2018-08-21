class AddedDefaultValueForRoleInUsersTable < ActiveRecord::Migration[5.2]
  def change
    change_column_default(:users, :role_id, 3)
  end
end
