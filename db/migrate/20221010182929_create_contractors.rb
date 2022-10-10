class CreateContractors < ActiveRecord::Migration[7.0]
  def change
    create_table :contractors do |t|
      t.string :no_año
      t.string :nombre_contratista
      t.integer :cedula_contratista
      t.text :objeto_contrato
      t.string :plazo
      t.text :valor_forma_pago
      t.string :modalidad_seleccion
      t.belongs_to :previous_study, null: false, foreign_key: true

      t.timestamps
    end
  end
end
