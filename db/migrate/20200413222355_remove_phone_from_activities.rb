class RemovePhoneFromActivities < ActiveRecord::Migration[6.0]
  def change

    remove_column :activities, :phone, :integer
  end
end
