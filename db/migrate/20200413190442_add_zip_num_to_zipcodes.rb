class AddZipNumToZipcodes < ActiveRecord::Migration[6.0]
  def change
    add_column :zipcodes, :zip_num, :string
  end
end
