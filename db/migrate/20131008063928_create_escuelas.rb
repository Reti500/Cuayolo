class CreateEscuelas < ActiveRecord::Migration
  def change
    create_table :escuelas do |t|
    	t.string :nombre

    	t.integer :user_id

      t.timestamps
    end
  end
end
