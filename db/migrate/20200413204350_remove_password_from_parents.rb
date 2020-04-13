class RemovePasswordFromParents < ActiveRecord::Migration[6.0]
  def change

    remove_column :parents, :password, :string
  end
end
