class CreateRequests < ActiveRecord::Migration[6.0]
  def change
    create_table :requests do |t|
      t.references :instructor, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.references :resort, null: false, foreign_key: true
      t.date :date
      t.boolean :early_am
      t.boolean :mid_am
      t.boolean :early_pm
      t.boolean :late_pm
      t.integer :group_size
      t.string :group_age
      t.string :group_skill
      t.string :specialty
      t.boolean :approved

      t.timestamps
    end
  end
end
