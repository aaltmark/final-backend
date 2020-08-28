class CreateSchedules < ActiveRecord::Migration[6.0]
  def change
    create_table :schedules do |t|
      t.references :instructor, null: false, foreign_key: true
      t.string :day_of_week
      t.boolean :early_am
      t.boolean :mid_am
      t.boolean :early_pm
      t.boolean :late_pm

      t.timestamps
    end
  end
end
