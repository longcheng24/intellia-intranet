class CalendarsController < ApplicationController
  def index
    @calendar_active = 1
    @calendars = Calendar.all

  end

  def new
    @calendar_active = 1
    @calendar = Calendar.new
  end

  def create
    @calendar = Calendar.new(calendar_params)
    @calendar.save
    redirect_to(:action => 'index')
  end

  def edit
    @calendar_active = 1
    @calendar = Calendar.find(params[:id])
  end

  def update
    @calendar = Calendar.find(params[:id])
    @calendar.update_attributes(calendar_params)
    redirect_to(:action => "index")
  end

  def destroy
    @calendar = Calendar.find(params[:id])
    @calendar.destroy
    redirect_to(:action => 'index')
  end

  def show
    @calendar_active = 1
    @calendar = Calendar.find(params[:id])
  end

  private

  def calendar_params
    params.require(:calendar).permit(:id, :title, :start_time, :user_id)
  end
end
