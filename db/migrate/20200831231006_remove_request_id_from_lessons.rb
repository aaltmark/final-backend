class RemoveRequestIdFromLessons < ActiveRecord::Migration[6.0]
  def change
    remove_column :lessons, :request_id, :integer
  end
end
