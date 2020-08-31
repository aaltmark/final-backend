class AddHometownToInstructors < ActiveRecord::Migration[6.0]
  def change
    add_column :instructors, :hometown, :string
  end
end
