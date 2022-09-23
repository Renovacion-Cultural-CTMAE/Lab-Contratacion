class Supervisor < ApplicationRecord
  belongs_to :contract_supervisor

  private

  ransacker :contract_supervisor_id do
      Arel.sql("to_char(\"#{table_name}\".\"contract_supervisor_id\", '999999999999')")
  end
end
