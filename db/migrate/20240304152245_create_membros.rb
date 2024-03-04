class CreateMembros < ActiveRecord::Migration[7.1]
  def change
    create_table :membros do |t|
      t.string :nome
      t.integer :etapa
      t.string :rosto
      t.string :qualEcyd
      t.integer :idade
      t.integer :rg
      t.integer :celular
      t.string :restricao

      t.timestamps
    end
  end
end
