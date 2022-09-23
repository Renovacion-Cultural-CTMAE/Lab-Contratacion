class ContractorProfession < ApplicationRecord
    belongs_to :contractor

    ransacker :contractor_id do
        Arel.sql("to_char(\"#{table_name}\".\"contractor_id\", '999999999999')")
    end

end
