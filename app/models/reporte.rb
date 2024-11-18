class Reporte < ApplicationRecord
  validates :sucursal, presence: true
  validates :logrado, presence: true
  validates :comentario, presence: true

end
