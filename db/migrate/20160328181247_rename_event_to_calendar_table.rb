class RenameEventToCalendarTable < ActiveRecord::Migration
  def change
    rename_table :events, :calendar
    drop_table :meetings
  end
end
