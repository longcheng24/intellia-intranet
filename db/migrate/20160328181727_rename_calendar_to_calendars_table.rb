class RenameCalendarToCalendarsTable < ActiveRecord::Migration
  def change
    rename_table :calendar, :calendars
  end
end
