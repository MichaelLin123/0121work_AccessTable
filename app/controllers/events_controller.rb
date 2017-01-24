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
    flash[:notice] = "event was successfully created"
    redirect_to :action => :index
  end
  def show
    @event = Event.find(params[:id])
  end
  def edit
    @event = Event.find(params[:id])

  end
  def update
    @event = Event.find(params[:id])
    @event.update(event_params)
    redirect_to :action => :show, :id => @event
    flash[:notice] = "event was successfully edited"
  end
  def destroy
    @event = Event.find(params[:id])
    @event.destroy
    flash[:notice] = "event was successfully destroy"
    redirect_to :action => :index
  end

  private

  def event_params
    params.require(:event).permit(:teamName, :coach, :is_west)
  end
end
