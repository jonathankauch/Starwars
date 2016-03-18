class CreatePilots < ActiveRecord::Migration
  def change
    create_table :pilots do |t|
      t.string :firstname
      t.string :lastname
      t.integer :age
      t.integer :grade

      t.timestamps
    end
  end
end
