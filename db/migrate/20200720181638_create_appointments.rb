class CreateAppointments < ActiveRecord::Migration[6.0]
  def change
    create_table :appointments do |t|
      t.string :title
      t.string :date
      t.string :time
      t.text :notes
      t.integer :patient_id
      t.integer :clinic_id

      t.timestamps
    end
  end
end
