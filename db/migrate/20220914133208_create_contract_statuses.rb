class CreateContractStatuses < ActiveRecord::Migration[7.0]
  def change
    create_table :contract_statuses do |t|
      t.integer :numero_contrato
      t.date :fecha_del_estado
      t.string :motivos_contrato
      t.belongs_to :contract

      t.timestamps
    end
  end
end
