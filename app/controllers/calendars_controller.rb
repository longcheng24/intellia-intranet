class CalendarsController < ApplicationController
  def index
    @events = Event.all
  end

  def new
    @event = Event.new
  end

  def create
    @event = Event.create(calendar_params)
    render 'index'
  end

  private

  def calendar_params
    params.require(:event).permit(:id, :title, :start_time, :user_id)
  end
end
