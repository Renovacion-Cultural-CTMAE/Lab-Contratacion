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
      t.text :justificacion_necesidad_contratacion
      t.text :obligaciones
      t.text :programa
      t.string :nivel
      t.text :perfil
      t.text :experiencia_t
      t.integer :numero_contratos
      t.string :valor_mes
      t.string :valor_total_contrato
      t.string :domicilio_contractual
      t.string :numero_contratos_escrito
      t.string :proyecto
      t.string :cargo_proyecto
      t.string :reviso
      t.string :cargo_reviso

      t.timestamps
    end
  end
end
