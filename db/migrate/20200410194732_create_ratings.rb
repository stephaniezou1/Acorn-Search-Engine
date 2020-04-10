class CreateRatings < ActiveRecord::Migration[6.0]
  def change
    create_table :ratings do |t|
      t.integer :parent_id
      t.integer :activity_id
      t.integer :num_rating
      t.text :description

      t.timestamps
    end
  end
end
