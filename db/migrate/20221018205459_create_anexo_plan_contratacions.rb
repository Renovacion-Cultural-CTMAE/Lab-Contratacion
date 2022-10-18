class CreateAnexoPlanContratacions < ActiveRecord::Migration[7.0]
  def change
    create_table :anexo_plan_contratacions do |t|
      t.integer :periodo
      t.string :elaborado_por
      t.integer :telefono
      t.string :duracion_programa
      t.string :observaciones
      t.belongs_to :previous_study, null: false, foreign_key: true

      t.timestamps
    end
  end
end
