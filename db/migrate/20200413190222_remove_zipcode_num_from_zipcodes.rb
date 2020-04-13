class RemoveZipcodeNumFromZipcodes < ActiveRecord::Migration[6.0]
  def change
    remove_column :zipcodes, :zipcode_num, :integer
  end
end
