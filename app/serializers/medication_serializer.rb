class MedicationSerializer < ActiveModel::Serializer
  attributes :id, :name, :dose, :frequency, :route

  belongs_to :patients
end
