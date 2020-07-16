class Patient < ApplicationRecord
    has_and_belongs_to_many :conditions
    has_and_belongs_to_many :medications
end
