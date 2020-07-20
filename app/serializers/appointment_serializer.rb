class AppointmentSerializer < ActiveModel::Serializer
  attributes :id, :title, :date, :time, :notes, :patient_id, :clinic_id
end
