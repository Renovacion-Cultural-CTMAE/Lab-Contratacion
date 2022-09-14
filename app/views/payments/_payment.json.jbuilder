json.extract! payment, :id, :numero_contrato, :numero_pago, :fecha_pago, :valor_pago, :observaciones, :created_at, :updated_at
json.url payment_url(payment, format: :json)
