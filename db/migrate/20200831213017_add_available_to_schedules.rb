class AddAvailableToSchedules < ActiveRecord::Migration[6.0]
  def change
    add_column :schedules, :available, :boolean
  end
end
