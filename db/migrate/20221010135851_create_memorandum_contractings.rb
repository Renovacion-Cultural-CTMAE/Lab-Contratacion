class CreateMemorandumContractings < ActiveRecord::Migration[7.0]
  def change
    create_table :memorandum_contractings do |t|
      t.string :tipo_formacion
      t.string :cdp
      t.belongs_to :previous_study, null: false, foreign_key: true

      t.timestamps
    end
  end
end
