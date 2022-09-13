class CreateContracts < ActiveRecord::Migration[7.0]
  def change
    create_table :contracts do |t|
      t.integer :cedula_contratista
      t.integer :numero_contrato
      t.date :fecha_contrato
      t.float :valor_contrato
      t.string :objeto_contrato
      t.belongs_to :contractor


      t.timestamps
    end
  end
end
