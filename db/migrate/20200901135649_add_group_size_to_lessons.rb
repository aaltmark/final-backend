class AddGroupSizeToLessons < ActiveRecord::Migration[6.0]
  def change
    add_column :lessons, :group_size, :integer
  end
end
