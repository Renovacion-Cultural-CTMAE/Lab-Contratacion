class Contractor < ApplicationRecord
    has_many :emails
    has_many :phones
    has_many :contractor_professions
    has_one  :health
    has_one  :pension 
    has_many :previous_studies

    private

    ransacker :id do
    Arel.sql("to_char(\"#{table_name}\".\"id\", '9999999999999999')")
  end
end
