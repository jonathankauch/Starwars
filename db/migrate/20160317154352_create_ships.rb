class CreateShips < ActiveRecord::Migration
  def change
    create_table :ships do |t|
      t.date :building_date
      t.string :nb_reactor
      t.boolean :has_hyperspace

      t.timestamps
    end
    add_foreign_key :planet_id, :planet
  end
end
