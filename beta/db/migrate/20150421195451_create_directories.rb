class CreateDirectories < ActiveRecord::Migration
  def change
    create_table :directories do |t|
      t.string :usuario_rut
      t.string :nombre
      t.string :descripcion
      t.integer :telefono
      t.integer :celular
      t.string :comuna
      t.string :ciudad

      t.timestamps null: false
    end
  end
end
