class AddPhoneToActivities < ActiveRecord::Migration[6.0]
  def change
    add_column :activities, :phone, :string
  end
end
