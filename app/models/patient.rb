class Patient < ApplicationRecord
    belongs_to :user
    has_many :conditions
    has_many :medications
    has_many :clinics
    has_many :appointments
end
