class AddSexoAndFechaNacToUsers < ActiveRecord::Migration
  def change
    add_column :users, :sexo, :string
    add_column :users, :fecha_nac, :date
  end
end
