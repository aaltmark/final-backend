class AddInstructorIdToLessons < ActiveRecord::Migration[6.0]
  def change
    add_column :lessons, :instructor_id, :integer
  end
end
