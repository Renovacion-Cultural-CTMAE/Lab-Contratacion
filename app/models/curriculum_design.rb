class CurriculumDesign < ApplicationRecord
  belongs_to :program
  has_many :curriculum_design_profiles
  has_many :competency_curriculum_designs
end
