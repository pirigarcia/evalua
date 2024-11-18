class CreateReportes < ActiveRecord::Migration[7.0]
  def change
    create_table :reportes do |t|
      t.string :sucursal
      t.integer :logrado
      t.text :comentario

      t.timestamps
    end
  end
end
