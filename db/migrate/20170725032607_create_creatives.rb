class CreateCreatives < ActiveRecord::Migration[5.0]
  def change
    create_table :creatives do |t|
      t.string :consumo
      t.string :publicidad
      t.string :creacion
      t.string :ahorro
      t.string :justificacion
      t.string :inicio

      t.timestamps
    end
  end
end
