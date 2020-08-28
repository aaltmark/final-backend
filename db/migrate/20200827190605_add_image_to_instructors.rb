class AddImageToInstructors < ActiveRecord::Migration[6.0]
  def change
    add_column :instructors, :image, :string
  end
end
