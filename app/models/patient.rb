class Patient < ApplicationRecord
    has_many :conditions
    has_many :medications
end
