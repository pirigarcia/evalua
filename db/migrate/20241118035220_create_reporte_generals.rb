class CreateReporteGenerals < ActiveRecord::Migration[7.0]
  def change
    create_table :reporte_generals do |t|
      t.string :venta
      t.string :atencion
      t.string :producto
      t.string :instalaciones

      t.timestamps
    end
  end
end
