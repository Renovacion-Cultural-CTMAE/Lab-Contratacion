class Contract < ApplicationRecord
  belongs_to :contractor
  has_many :contract_movements
  has_many :contract_requirements
  has_many :contract_statuses
  has_many :payments
  has_many :contract_requirements
  has_many :contract_supervisors
  
  private

    ransacker :contractor_id do
      Arel.sql("to_char(\"#{table_name}\".\"contractor_id\", '999999999999')")
    end

end
