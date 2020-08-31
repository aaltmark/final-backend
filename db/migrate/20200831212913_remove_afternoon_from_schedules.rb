class RemoveAfternoonFromSchedules < ActiveRecord::Migration[6.0]
  def change
    remove_column :schedules, :afternoon, :boolean
  end
end
