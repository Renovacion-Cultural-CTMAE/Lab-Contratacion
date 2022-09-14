class CreatePayments < ActiveRecord::Migration[7.0]
  def change
    create_table :payments do |t|
      t.integer :numero_contrato
      t.integer :numero_pago
      t.date :fecha_pago
      t.float :valor_pago
      t.text :observaciones
      t.belongs_to :contract

      t.timestamps
    end
  end
end
