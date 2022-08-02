class CreateContractorProfessions < ActiveRecord::Migration[7.0]
  def change
    create_table :contractor_professions do |t|
      t.integer :cedula_contratista
      t.string :codigo_profesion
      t.string :nombre_profesion
      t.belongs_to :contractor
      
      t.timestamps
    end
  end
end
