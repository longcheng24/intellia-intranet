class RenameCalendarToCalendarsTable < ActiveRecord::Migration
  def up
    rename_table :calendar, :calendars
  end
  def down
    rename_table :calendars, :calendar
  end
end
