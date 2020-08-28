class CreateSearches < ActiveRecord::Migration[6.0]
  def change
    create_table :searches do |t|
      t.references :user, null: false, foreign_key: true
      t.references :resort, null: false, foreign_key: true
      t.string :specialty
      t.integer :duration
      t.integer :group_size
      t.string :group_age
      t.string :group_skill
      t.date :date

      t.timestamps
    end
  end
end
