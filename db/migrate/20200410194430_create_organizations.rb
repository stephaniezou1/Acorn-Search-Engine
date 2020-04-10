class CreateOrganizations < ActiveRecord::Migration[6.0]
  def change
    create_table :organizations do |t|
      t.string :name
      t.string :street
      t.string :apt_num
      t.string :city
      t.string :state
      t.integer :zipcode_id

      t.timestamps
    end
  end
end
