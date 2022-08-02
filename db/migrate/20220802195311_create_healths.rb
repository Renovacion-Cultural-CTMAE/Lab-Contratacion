class CreateHealths < ActiveRecord::Migration[7.0]
  def change
    create_table :healths do |t|
      t.integer :codigo_nit_eps
      t.string :nombre_eps
      t.integer :telefono_eps
      t.string :ciudad_eps
      t.string :correo_eps
      t.integer :cedula_contratista
      t.belongs_to :contractor
      
      t.timestamps
    end
  end
end
