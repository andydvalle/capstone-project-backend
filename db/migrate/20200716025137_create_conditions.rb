class CreateConditions < ActiveRecord::Migration[6.0]
  def change
    create_table :conditions do |t|
      t.string :name
      t.text :notes
      t.integer :patient_id

      t.timestamps
    end
  end
end
