class AddAttributesToReportes < ActiveRecord::Migration[7.0]
  def change
    add_column :reportes, :venta, :string
    add_column :reportes, :atencion, :string
    add_column :reportes, :producto, :string
    add_column :reportes, :instalaciones, :string
  end
end
