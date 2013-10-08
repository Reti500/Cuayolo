class CreateAsignarEscuelas < ActiveRecord::Migration
  def change
    create_table :asignar_escuelas do |t|
      t.integer :user_id
      t.integer :escuela_id

      t.timestamps
    end
  end
end
