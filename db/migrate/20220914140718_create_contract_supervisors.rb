class CreateContractSupervisors < ActiveRecord::Migration[7.0]
  def change
    create_table :contract_supervisors do |t|
      t.integer :cedula_supervisor
      t.integer :numero_contrato
      t.date :fecha_inicio_supervicion
      t.integer :cedula_contratista
      t.belongs_to :contract

      t.timestamps
    end
  end
end
