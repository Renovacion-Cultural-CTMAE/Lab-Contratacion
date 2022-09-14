class Contract < ApplicationRecord
  belongs_to :contractor
  has_many :contract_movements
  has_many :contract_requirements
  has_many :contract_statuses
  has_many :payments
  
end
