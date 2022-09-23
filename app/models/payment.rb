class Payment < ApplicationRecord
  belongs_to :contract

  private

  ransacker :contract_id do
      Arel.sql("to_char(\"#{table_name}\".\"contract_id\", '999999999999')")
  end
end
