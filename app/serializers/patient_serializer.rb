class PatientSerializer < ActiveModel::Serializer
  attributes :id, :name, :dob, :sex, :age, :user_id
end
