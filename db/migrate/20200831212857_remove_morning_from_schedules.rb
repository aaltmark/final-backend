class RemoveMorningFromSchedules < ActiveRecord::Migration[6.0]
  def change
    remove_column :schedules, :morning, :boolean
  end
end
