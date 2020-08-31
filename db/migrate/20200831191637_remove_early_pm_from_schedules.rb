class RemoveEarlyPmFromSchedules < ActiveRecord::Migration[6.0]
  def change
    remove_column :schedules, :early_pm, :boolean
  end
end
