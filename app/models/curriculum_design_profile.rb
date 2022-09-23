class CurriculumDesignProfile < ApplicationRecord
  belongs_to :curriculum_design

  private

  ransacker :curriculum_design_id do
    Arel.sql("to_char(\"#{table_name}\".\"curriculum_design_id\", '999999999999')")
  end

end
