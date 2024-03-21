class AddMembrosToEvento < ActiveRecord::Migration[7.1]
  def change
    add_reference :membros, :evento
  end
end
