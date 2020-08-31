class RemoveDayOfWeekFromSchedules < ActiveRecord::Migration[6.0]
  def change
    remove_column :schedules, :day_of_week, :string
  end
end
