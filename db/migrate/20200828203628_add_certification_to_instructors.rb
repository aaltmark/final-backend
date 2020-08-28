class AddCertificationToInstructors < ActiveRecord::Migration[6.0]
  def change
    add_column :instructors, :certification, :boolean
  end
end
