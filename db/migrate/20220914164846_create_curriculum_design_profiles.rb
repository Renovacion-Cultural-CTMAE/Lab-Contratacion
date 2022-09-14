class CreateCurriculumDesignProfiles < ActiveRecord::Migration[7.0]
  def change
    create_table :curriculum_design_profiles do |t|
      t.string :codigo_diseño_curricural
      t.string :nombre_perfil
      t.string :tipos_perfiles
      t.belongs_to :curriculum_design

      t.timestamps
    end
  end
end
