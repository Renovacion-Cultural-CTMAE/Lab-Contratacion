class CreateSupervisors < ActiveRecord::Migration[7.0]
  def change
    create_table :supervisors do |t|
      t.integer :cedula_supervisor
      t.string :nombre
      t.string :apellido
      t.string :telefono
      t.string :correo
      t.string :cargo
      t.belongs_to :contract_supervisor

      t.timestamps
    end
  end
end
