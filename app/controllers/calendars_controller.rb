class CalendarsController < ApplicationController
  def index
    @events = Event.all
  end

  def new
    @event = Event.new
  end

  def create
    @event = Event.new(calendar_params)
    @event.save
    redirect_to(:action => 'index')
  end

  def edit
    @event = Event.find(params[:id])
  end

  def update
    @event = Event.find(params[:id])
    @event.update(calendar_params)
  end

  def destroy
    @event = Event.find(params[:id])
    @event.destroy
    redirect_to(:action => 'index')
  end

  def show
    @event = Event.find(params[:id])
  end

  private

  def calendar_params
    params.require(:event).permit(:id, :title, :start_time, :user_id)
  end
end
