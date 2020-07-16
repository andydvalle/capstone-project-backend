class MedicationSerializer < ActiveModel::Serializer
  attributes :id, :name, :dose, :frequency, :route

  has_and_belongs_to_many :patients
end
