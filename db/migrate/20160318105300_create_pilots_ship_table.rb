class CreatePilotsShipTable < ActiveRecord::Migration
  def up
    create_table :pilots_ship do |t|
      t.integer :pilot_id
      t.integer :ship_id
      t.datetime :last_utilisation
    end
  end

  def down
  end
end
