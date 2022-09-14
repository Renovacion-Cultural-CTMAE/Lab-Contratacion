class CreatePreviousStudies < ActiveRecord::Migration[7.0]
  def change
    create_table :previous_studies do |t|
      t.integer :codigo_estudios
      t.date :fecha_estudios
      t.float :valor_estudios
      t.string :codigo_programa
      t.string :codigo_profesion
      t.string :cedula_contratista
      t.belongs_to :contractor
      t.belongs_to :contract

      t.timestamps
    end
  end
end
