class RemoveUseridFromUsers < ActiveRecord::Migration[8.1]
  def change
    remove_column :users, :userid, :string
  end
end
