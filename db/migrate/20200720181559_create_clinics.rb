class CreateClinics < ActiveRecord::Migration[6.0]
  def change
    create_table :clinics do |t|
      t.string :name
      t.string :practitioner
      t.string :location
      t.string :number
      t.text :notes
      t.integer :patient_id

      t.timestamps
    end
  end
end
