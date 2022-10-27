class PreviousStudy < ApplicationRecord
  has_rich_text :justificacion_necesidad_contratacion
  has_rich_text :obligaciones
  has_many :programs
  has_one :memorandum_contracting, dependent: :destroy
  has_one :contracting_authorization, dependent: :destroy
  has_one :equal_object, dependent: :destroy
  has_one :personal_inexistence, dependent: :destroy
  has_one :inclusion_object_acqu, dependent: :destroy
  has_one :anexo_plan_contratacion, dependent: :destroy
  has_one :riesgo, dependent: :destroy
end
