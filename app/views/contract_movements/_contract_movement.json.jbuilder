json.extract! contract_movement, :id, :numero_contrato, :numero_movimiento, :fecha_movimiento, :valor_movimiento, :saldo, :observacion, :created_at, :updated_at
json.url contract_movement_url(contract_movement, format: :json)
