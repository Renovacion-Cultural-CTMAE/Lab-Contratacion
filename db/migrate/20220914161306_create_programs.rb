class CreatePrograms < ActiveRecord::Migration[7.0]
  def change
    create_table :programs do |t|
      t.string :codigo_diseño_curricural
      t.string :codigo_programa
      t.string :nombre_programa
      t.integer :intensidad_horaria_programa
      t.belongs_to :previous_study

      t.timestamps
    end
  end
end
