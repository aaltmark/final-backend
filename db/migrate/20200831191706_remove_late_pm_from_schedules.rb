class RemoveLatePmFromSchedules < ActiveRecord::Migration[6.0]
  def change
    remove_column :schedules, :late_pm, :boolean
  end
end
