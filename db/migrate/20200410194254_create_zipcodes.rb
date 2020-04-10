class CreateZipcodes < ActiveRecord::Migration[6.0]
  def change
    create_table :zipcodes do |t|
      t.integer :zipcode_num

      t.timestamps
    end
  end
end
