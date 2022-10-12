class CreatePreviousStudies < ActiveRecord::Migration[7.0]
  def change
    create_table :previous_studies do |t|
      t.text :objeto
      t.text :educacion
      t.string :experiencia
      t.text :valor_forma_pago
      t.string :plazo
      t.string :lugar
      t.string :supervisor
      t.string :ordenador
      t.string :nombre_centro
      t.text :justificacion_necesidad_contratacion
      t.text :obligaciones
      t.text :programa
      t.string :nivel
      t.text :perfil
      t.integer :numero_contratos
      t.float :valor_mes
      t.float :valor_total_contrato
      t.string :domicilio_contractual
      t.text :justificacion_valor_contrato
      t.boolean :contratacion_acuerdo_comercial
      t.boolean :contratacion_plan_adquisiciones

      t.timestamps
    end
  end
end
