class MedicationSerializer < ActiveModel::Serializer
  attributes :id, :name, :dose, :frequency, :route, :profile_id, :office_id
end
