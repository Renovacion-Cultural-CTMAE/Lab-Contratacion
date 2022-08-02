class CreateEmails < ActiveRecord::Migration[7.0]
  def change
    create_table :emails do |t|
      t.integer :cedula_de_contratistas
      t.string :correo
      t.boolean :activo
      t.belongs_to :contractor
      
      t.timestamps
    end
  end
end
