class CreateContractRequirements < ActiveRecord::Migration[7.0]
  def change
    create_table :contract_requirements do |t|
      t.integer :numero_contrato
      t.string :requisitos
      t.integer :codigo_requisitos
      t.string :nombre_requisito
      t.belongs_to :contract

      t.timestamps
    end
  end
end
