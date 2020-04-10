class CreateActivities < ActiveRecord::Migration[6.0]
  def change
    create_table :activities do |t|
      t.string :name
      t.integer :organization_id
      t.text :description
      t.integer :zipcode_id
      t.integer :phone

      t.timestamps
    end
  end
end
