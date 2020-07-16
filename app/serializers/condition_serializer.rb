class ConditionSerializer < ActiveModel::Serializer
  attributes :id, :name, :description

  has_and_belongs_to_many :patients
end
