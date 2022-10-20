class CreateRiesgos < ActiveRecord::Migration[7.0]
  def change
    create_table :riesgos do |t|
      t.string :descripcion_operacional1
      t.string :descripcion_operacional2
      t.string :descripcion_operacional3
      t.references :previous_study, null: false, foreign_key: true

      t.timestamps
    end
  end
end
