class RenameEventToCalendarTable < ActiveRecord::Migration
  def up
    rename_table :events, :calendar
    add_table :meetings
  end
  def down
    drop_table :meetings
    rename_table :calendar, :events
  end
end
