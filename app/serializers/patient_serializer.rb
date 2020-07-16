class PatientSerializer < ActiveModel::Serializer
  attributes :id, :name, :dob, :sex, :age, :user_id

  has_and_belongs_to_many :conditions
  has_and_belongs_to_many :medications
end
