class EventsAttendanceController < ApplicationController
  def show
    @attended_event = User.find(params[:attended_event_id])
  end
end
