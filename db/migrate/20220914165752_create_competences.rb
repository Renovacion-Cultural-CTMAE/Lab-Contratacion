class CreateCompetences < ActiveRecord::Migration[7.0]
  def change
    create_table :competences do |t|
      t.integer :numero_competencia
      t.string :nombre_competencia
      t.integer :intencidad_horaria
      t.string :linea_transversal
      t.belongs_to :competency_curriculum_design

      t.timestamps
    end
  end
end
