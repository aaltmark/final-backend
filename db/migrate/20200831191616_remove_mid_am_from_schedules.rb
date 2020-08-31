class RemoveMidAmFromSchedules < ActiveRecord::Migration[6.0]
  def change
    remove_column :schedules, :mid_am, :boolean
  end
end
