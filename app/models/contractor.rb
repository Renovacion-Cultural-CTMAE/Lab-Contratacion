class Contractor < ApplicationRecord
    has_many :emails
    has_many :phones
    has_many :contractor_professions
    has_one  :health
    has_one  :pension 
    has_many :previous_studies
end
