class Program < ApplicationRecord
  belongs_to :previous_studies
  has_many :curriculum_designs

  private

  ransacker :previous_study_id do
    Arel.sql("to_char(\"#{table_name}\".\"previous_study_id\", '999999999999')")
  end
end
