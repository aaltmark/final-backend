class AddResortIdToLessons < ActiveRecord::Migration[6.0]
  def change
    add_column :lessons, :resort_id, :integer
  end
end
