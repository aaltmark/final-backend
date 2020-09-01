class AddGroupSkillToLessons < ActiveRecord::Migration[6.0]
  def change
    add_column :lessons, :group_skill, :string
  end
end
