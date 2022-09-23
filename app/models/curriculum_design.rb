class CurriculumDesign < ApplicationRecord
  belongs_to :program
  has_many :curriculum_design_profiles
  has_many :competency_curriculum_designs

  private

  ransacker :program_id do
    Arel.sql("to_char(\"#{table_name}\".\"program_id\", '999999999999')")
  end
end
