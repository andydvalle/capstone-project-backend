class ClinicSerializer < ActiveModel::Serializer
  attributes :id, :name, :practitioner, :location, :number, :notes, :patient_id
end
