class CreateEndorsements < ActiveRecord::Migration[6.0]
  def change
    create_table :endorsements do |t|
      t.integer :activity_id
      t.integer :teacher_id
      t.string :list_category

      t.timestamps
    end
  end
end
