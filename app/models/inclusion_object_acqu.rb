class InclusionObjectAcqu < ApplicationRecord
  belongs_to :previous_study
  has_one_attached :image
end
