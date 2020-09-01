class AddResortNameToLessons < ActiveRecord::Migration[6.0]
  def change
    add_column :lessons, :resort_name, :string
  end
end
