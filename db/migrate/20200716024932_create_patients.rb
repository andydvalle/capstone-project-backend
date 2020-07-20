class CreatePatients < ActiveRecord::Migration[6.0]
  def change
    create_table :patients do |t|
      t.string :firstName
      t.string :lastName
      t.string :dob
      t.string :allergies
      t.integer :user_id

      t.timestamps
    end
  end
end
