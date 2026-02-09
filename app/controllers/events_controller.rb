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
    @current_user = User.find(:id)
    @event = @current_user.created_events.build(event_params)

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
