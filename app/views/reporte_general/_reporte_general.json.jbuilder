json.extract! reporte_general, :id, :venta, :atención, :producto, :instalaciones, :created_at, :updated_at
json.url reporte_general_url(reporte_general, format: :json)
