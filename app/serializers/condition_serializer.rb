class ConditionSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :profile_id
end
