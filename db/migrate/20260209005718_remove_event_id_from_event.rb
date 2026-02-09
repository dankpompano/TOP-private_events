class RemoveEventIdFromEvent < ActiveRecord::Migration[8.1]
  def change
    remove_column :events, :eventid, :string
  end
end
