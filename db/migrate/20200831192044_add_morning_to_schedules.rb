class AddMorningToSchedules < ActiveRecord::Migration[6.0]
  def change
    add_column :schedules, :morning, :boolean
  end
end
