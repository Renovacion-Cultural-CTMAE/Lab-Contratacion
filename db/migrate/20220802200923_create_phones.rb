class CreatePhones < ActiveRecord::Migration[7.0]
  def change
    create_table :phones do |t|
      t.integer :cedula_de_contratistas
      t.string :numero_de_telefono
      t.string :operador
      t.boolean :activo
      t.belongs_to :contractor
      
      t.timestamps
    end
  end
end
