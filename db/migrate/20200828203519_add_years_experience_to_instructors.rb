class AddYearsExperienceToInstructors < ActiveRecord::Migration[6.0]
  def change
    add_column :instructors, :years_experience, :integer
  end
end
