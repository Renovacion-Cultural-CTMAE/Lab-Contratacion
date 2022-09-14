class CreateCompetencyCurriculumDesigns < ActiveRecord::Migration[7.0]
  def change
    create_table :competency_curriculum_designs do |t|
      t.integer :numero_competencia
      t.string :codigo_diseño_curricural
      t.belongs_to :curriculum_design

      t.timestamps
    end
  end
end
