class AddRostoToMembro < ActiveRecord::Migration[7.1]
  def change
    change_column :membros, :rosto, :attachment
  end
end
