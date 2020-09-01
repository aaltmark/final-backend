class RemoveResortIdFromLessons < ActiveRecord::Migration[6.0]
  def change
    remove_column :lessons, :resort_id, :integer
  end
end
