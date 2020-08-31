class AddAfternoonToSchedules < ActiveRecord::Migration[6.0]
  def change
    add_column :schedules, :afternoon, :boolean
  end
end
