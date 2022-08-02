class CreatePensions < ActiveRecord::Migration[7.0]
  def change
    create_table :pensions do |t|
      t.integer :cedula_contratista
      t.integer :nit_de_la_entidad
      t.string :nombre_la_entidad
      t.string :telefono_de_la_entidad
      t.string :ciudad_de_la_entidad
      t.string :correo_de_la_entidad
      t.belongs_to :contractor
      
      t.timestamps
    end
  end
end
