class CreateInscricaos < ActiveRecord::Migration[7.1]
  def change
    create_table :inscricaos do |t|
      t.belongs_to :membro
      t.belongs_to :evento
      
      t.timestamps
    end
  end
end
