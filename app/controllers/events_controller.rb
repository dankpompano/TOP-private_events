class EventsController < ApplicationController
  def index
    @event = Event.all
  end

  def new
    @event = Event.new
  end

  def show
    @user = User.find(params[:id])
  end

  def create
    @event = Event.new(event_params)
    @event.creator = current_user

    if @event.save
      redirect_to @event
    else
      render :new, status: :unprocessable_entity
    end
  end

private

def event_params
  params.require(:event).permit(:eventname, :location, :date, :time)
end
end
