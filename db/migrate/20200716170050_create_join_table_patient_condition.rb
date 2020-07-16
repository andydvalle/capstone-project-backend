class CreateJoinTablePatientCondition < ActiveRecord::Migration[6.0]
  def change
    create_join_table :patients, :conditions do |t|
      # t.index [:patient_id, :condition_id]
      # t.index [:condition_id, :patient_id]
    end
  end
end
