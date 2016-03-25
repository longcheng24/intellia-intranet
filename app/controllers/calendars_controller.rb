class CalendarsController < ApplicationController
  def index
    @calendar_active = 1
    @events = Event.all

  end

  def new
    @calendar_active = 1
    @event = Event.new
  end

  def create
    @event = Event.new(calendar_params)
    @event.save
    redirect_to(:action => 'index')
  end

  def edit
    @calendar_active = 1
    @event = Event.find(params[:id])
  end

  def update
    @event = Event.find(params[:id])
    @event.update_attributes(calendar_params)
    redirect_to(:action => "index")
  end

  def destroy
    @event = Event.find(params[:id])

    @event.destroy

    redirect_to(:action => 'index')
  end

  def show
    @calendar_active = 1
    @event = Event.find(params[:id])
  end

  private

  def calendar_params
    params.require(:event).permit(:id, :title, :start_time, :user_id)
  end
end
