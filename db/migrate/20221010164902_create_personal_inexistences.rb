class CreatePersonalInexistences < ActiveRecord::Migration[7.0]
  def change
    create_table :personal_inexistences do |t|
      t.string :proyecto
      t.string :reviso
      t.string :vob
      t.string :nombre_director_general
      t.references :previous_study, null: false, foreign_key: true

      t.timestamps
    end
  end
end
