class CreateMedications < ActiveRecord::Migration[6.0]
  def change
    create_table :medications do |t|
      t.string :name_route
      t.string :strength
      t.string :instructions
      t.text :notes
      t.boolean :onSun
      t.boolean :onMon
      t.boolean :onTue
      t.boolean :onWed
      t.boolean :onThu
      t.boolean :onFri
      t.boolean :onSat
      t.integer :patient_id

      t.timestamps
    end
  end
end
