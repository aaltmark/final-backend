class CreateInstructorResorts < ActiveRecord::Migration[6.0]
  def change
    create_table :instructor_resorts do |t|
      t.references :instructor, null: false, foreign_key: true
      t.references :resort, null: false, foreign_key: true

      t.timestamps
    end
  end
end
