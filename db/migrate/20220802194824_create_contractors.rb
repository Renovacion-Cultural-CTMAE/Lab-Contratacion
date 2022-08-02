class CreateContractors < ActiveRecord::Migration[7.0]
  def change
    create_table :contractors do |t|
      t.string :nombre
      t.string :apellido
      t.integer :cedula_contratista
      t.string :lugar_expedicion_cedula
      t.string :fecha_expedicion_cedula
      t.integer :edad
      t.string :fecha_de_nacimiento
      t.string :municipio_de_recidencia
      t.string :sexo
      t.integer :numero_de_libreta_militar
      
      t.timestamps
    end
  end
end
