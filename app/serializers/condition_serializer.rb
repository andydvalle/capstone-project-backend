class ConditionSerializer < ActiveModel::Serializer
  attributes :id, :name, :description

  belongs_to :patients
end
