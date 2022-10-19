class CreateInclusionObjectAcqus < ActiveRecord::Migration[7.0]
  def change
    create_table :inclusion_object_acqus do |t|
      t.integer :año
      t.string :fecha_constancia
      t.string :proyecto
      t.string :reviso
      t.references :previous_study, null: false, foreign_key: true

      t.timestamps
    end
  end
end
