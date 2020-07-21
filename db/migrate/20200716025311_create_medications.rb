class CreateMedications < ActiveRecord::Migration[6.0]
  def change
    create_table :medications do |t|
      t.string :name_route
      t.string :strength
      t.string :instructions
      t.text :notes
      t.boolean :sunday
      t.boolean :monday
      t.boolean :tuesday
      t.boolean :wednesday
      t.boolean :thursday
      t.boolean :friday
      t.boolean :saturday
      t.integer :patient_id

      t.timestamps
    end
  end
end
