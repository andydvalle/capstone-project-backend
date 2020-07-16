class CreateJoinTablePatientMedication < ActiveRecord::Migration[6.0]
  def change
    create_join_table :patients, :medications do |t|
      # t.index [:patient_id, :medication_id]
      # t.index [:medication_id, :patient_id]
    end
  end
end
