class AddGroupAgeToLessons < ActiveRecord::Migration[6.0]
  def change
    add_column :lessons, :group_age, :string
  end
end
