class PreviousStudy < ApplicationRecord
  has_rich_text :justificacion_necesidad_contratacion
  has_rich_text :obligaciones
  has_many :programs
  has_one :memorandum_contracting
  has_one :contracting_authorization
  has_one :equal_object
  has_one :personal_inexistence
end
