class EventController < ApplicationController
  def index
    @event = Event.all
  end

  def new
    @event = Event.new
  end

  def create
    @event = @user.created_events.build(event_params)
  end

private

def event_params
  params.require(:event).permit(:eventname, :location, :date, :time)
end
end
