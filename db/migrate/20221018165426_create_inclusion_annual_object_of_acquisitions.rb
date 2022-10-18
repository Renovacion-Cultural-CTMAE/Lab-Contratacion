class CreateInclusionAnnualObjectOfAcquisitions < ActiveRecord::Migration[7.0]
  def change
    create_table :inclusion_annual_object_of_acquisitions do |t|
      t.integer :año
      t.string :fecha_constancia
      t.string :proyecto
      t.string :reviso
      t.belongs_to :previous_study, null: false, foreign_key: true

      t.timestamps
    end
  end
end
