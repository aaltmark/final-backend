class RemoveEarlyAmFromSchedules < ActiveRecord::Migration[6.0]
  def change
    remove_column :schedules, :early_am, :boolean
  end
end
