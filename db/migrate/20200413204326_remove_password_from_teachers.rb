class RemovePasswordFromTeachers < ActiveRecord::Migration[6.0]
  def change
    remove_column :teachers, :password, :string
  end
end
