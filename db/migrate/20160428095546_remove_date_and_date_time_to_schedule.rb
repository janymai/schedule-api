class RemoveDateAndDateTimeToSchedule < ActiveRecord::Migration
  def change
    remove_column :schedules, :date
    remove_column :schedules, :datetime

    add_column :schedules, :date, :datetime
  end
end
