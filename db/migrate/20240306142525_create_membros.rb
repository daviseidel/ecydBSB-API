class CreateMembros < ActiveRecord::Migration[7.1]
  def change
    create_table :membros do |t|
      t.string :nome
      t.string :etapa
      t.string :rosto
      t.integer :rg
      t.integer :celular
      t.integer :anoDeInscricao
      t.integer :localEcyd
      t.string :restricao

      t.timestamps
    end
  end
end
