class PreviousStudy < ApplicationRecord
  belongs_to :contractor
  has_many :programs
end
