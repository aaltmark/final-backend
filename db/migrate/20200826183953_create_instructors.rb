class CreateInstructors < ActiveRecord::Migration[6.0]
  def change
    create_table :instructors do |t|
      t.string :name
      t.string :phone
      t.date :date_of_birth
      t.string :email
      t.string :specialty
      t.integer :group_size
      t.string :group_age
      t.string :group_skill

      t.timestamps
    end
  end
end
