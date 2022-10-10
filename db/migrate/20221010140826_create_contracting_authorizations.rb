class CreateContractingAuthorizations < ActiveRecord::Migration[7.0]
  def change
    create_table :contracting_authorizations do |t|
      t.text :cdp
      t.text :rubro
      t.text :radicado_nis
      t.belongs_to :previous_study, null: false, foreign_key: true
    

      t.timestamps
    end
  end
end
