class CreateEvents < ActiveRecord::Migration[8.1]
  def change
    create_table :events do |t|
      t.integer :eventid
      t.string :eventname
      t.string :location
      t.date :date
      t.time :time

      t.timestamps
    end
  end
end
