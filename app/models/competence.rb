class Competence < ApplicationRecord
  belongs_to :competency_curriculum_design

  private

  ransacker :competency_curriculum_design_id do
    Arel.sql("to_char(\"#{table_name}\".\"competency_curriculum_design_id\", '999999999999')")
  end

end
