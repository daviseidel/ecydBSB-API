class CreateEventos < ActiveRecord::Migration[7.1]
  def change
    create_table :eventos do |t|
      t.string :titulo
      t.text :descricao
      t.date :data
      t.string :local
      t.integer :inscritos

      t.timestamps
    end
  end
end
