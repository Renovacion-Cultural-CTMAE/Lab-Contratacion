class Program < ApplicationRecord
  belongs_to :previous_studies
  has_many :curriculum_designs
end
