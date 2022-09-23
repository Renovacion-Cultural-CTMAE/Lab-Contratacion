class Pension < ApplicationRecord
    belongs_to :contractor


    private

    ransacker :contractor_id do
    Arel.sql("to_char(\"#{table_name}\".\"contractor_id\", '9999999999999')")
  end
end
