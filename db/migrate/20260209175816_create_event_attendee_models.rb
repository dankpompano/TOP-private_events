class CreateEventAttendeeModels < ActiveRecord::Migration[8.1]
  def change
    create_table :event_attendee_models do |t|
      t.timestamps
    end
  end
end
