class PreviousStudy < ApplicationRecord
  belongs_to :contractor
  has_many :programs

  private

  ransacker :contractor_id do
    Arel.sql("to_char(\"#{table_name}\".\"contractor_id\", '999999999999')")
  end
end
