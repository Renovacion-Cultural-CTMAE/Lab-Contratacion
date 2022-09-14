class CreateCurriculumDesigns < ActiveRecord::Migration[7.0]
  def change
    create_table :curriculum_designs do |t|
      t.string :codigo_diseño_curricural
      t.string :nombre_diseño_curricural
      t.integer :numero_registro_calificado
      t.belongs_to :program

      t.timestamps
    end
  end
end
