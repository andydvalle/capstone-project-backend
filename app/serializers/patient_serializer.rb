class PatientSerializer < ActiveModel::Serializer
  attributes :id, :name, :dob, :sex, :age, :user_id

  has_many :conditions
  has_many :medications
end
