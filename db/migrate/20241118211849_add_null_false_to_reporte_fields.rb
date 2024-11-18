class AddNullFalseToReporteFields < ActiveRecord::Migration[7.0]
  def change
    change_column_null :reportes, :sucursal, false
    change_column_null :reportes, :logrado, false
    change_column_null :reportes, :comentario, false
    change_column_null :reportes, :atencion, false
    change_column_null :reportes, :venta, false
    change_column_null :reportes, :producto, false
    change_column_null :reportes, :instalaciones, false


  end
end
