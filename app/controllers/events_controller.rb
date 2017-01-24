class EventsController < ApplicationController
  def index
    @events = Event.all
  end
  def new
    @event = Event.new
  end
  def create
    @event = Event.new(event_params)
    @event.save
    redirect_to :action => :index
  end
  def show
    @event = Event.find(params[:id])
  end


  private

  def event_params
    params.require(:event).permit(:teamName, :coach, :is_west)
  end
end