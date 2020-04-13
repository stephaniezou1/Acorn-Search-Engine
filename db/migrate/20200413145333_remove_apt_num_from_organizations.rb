class RemoveAptNumFromOrganizations < ActiveRecord::Migration[6.0]
  def change
    remove_column :organizations, :apt_num, :string
  end
end
