class CreateTeachers < ActiveRecord::Migration[6.0]
  def change
    create_table :teachers do |t|
      t.string :username
      t.string :password
      t.string :email
      t.integer :zipcode_id

      t.timestamps
    end
  end
end
