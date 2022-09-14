class CreateContractMovements < ActiveRecord::Migration[7.0]
  def change
    create_table :contract_movements do |t|
      t.integer :numero_contrato
      t.integer :numero_movimiento
      t.date :fecha_movimiento
      t.integer :valor_movimiento
      t.integer :saldo
      t.text :observacion
      t.belongs_to :contract

      t.timestamps
    end
  end
end
