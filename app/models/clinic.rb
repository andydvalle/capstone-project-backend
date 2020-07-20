class Clinic < ApplicationRecord
    has_many :appointments
    belongs_to :patient
end
